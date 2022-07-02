use fvm_integration_tests::tester::{Account, Tester};
use fvm_shared::message::Message;
use fvm_shared::state::StateTreeVersion;
use fvm_shared::version::NetworkVersion;
use fvm::executor::{ApplyKind, Executor};
use fvm_ipld_blockstore::MemoryBlockstore;
use fvm_ipld_encoding::tuple::*;
use fvm_ipld_encoding::RawBytes;
use fvm_shared::address::Address;
use fvm_shared::bigint::BigInt;
use std::env;
use std::collections::hash_map::HashMap;

const WASM_COMPILED_PATH: &str =
    "../build/fil-fns-actor.wasm";

/// The state object.
#[derive(Serialize_tuple, Deserialize_tuple, Clone, Debug, Default)]
pub struct State {
    pub count: u64,
    pub name_register: HashMap<String,u64>,
}

fn main() {
    println!("Testing FNS actor in assembly script");

    let mut tester = Tester::new(
        NetworkVersion::V16,
        StateTreeVersion::V4,
        MemoryBlockstore::default(),
    )
    .unwrap();

    let sender: [Account; 1] = tester.create_accounts().unwrap();

    let wasm_path = env::current_dir()
    .unwrap()
    .join(WASM_COMPILED_PATH)
    .canonicalize()
    .unwrap();
    let wasm_bin = std::fs::read(wasm_path).expect("Unable to read file");

    let actor_state = State { count: 0, name_register: HashMap::new() };
    let state_cid = tester.set_state(&actor_state).unwrap();

    // Set actor
    let actor_address = Address::new_id(10000);

    tester
        .set_actor_from_bin(&wasm_bin, state_cid, actor_address, BigInt::default())
        .unwrap();

    let actor = tester.state_tree.as_ref().unwrap().get_actor(&actor_address).unwrap().unwrap();
    let state = tester.blockstore().clone().get(&actor.state).unwrap();
    println!("Cbor hex state : {}", hex::encode(state.unwrap()));

    // Instantiate machine
    tester.instantiate_machine().unwrap();

    let executor = tester.executor.as_mut().unwrap();

    println!("Calling `register`");
    let params = RawBytes::new(hex::decode("816A7A6F6E6461782E66696C").unwrap());

    let message = Message {
        from: sender[0].1,
        to: actor_address,
        gas_limit: 1000000000,
        method_num: 2,
        params,
        ..Message::default()
    };

    let res = executor
        .execute_message(message, ApplyKind::Explicit, 100)
        .unwrap();

    dbg!(&res);

    assert_eq!(res.msg_receipt.exit_code.value(), 0);

    println!("Calling `transfer`");

    // Cannot do two call in a row

    let params = RawBytes::new(hex::decode("826A7A6F6E6461782E66696C55011EDA43D05CA6D7D637E7065EF6B8C5DB89E5FB0C").unwrap());

    let message = Message {
        from: sender[0].1,
        to: actor_address,
        gas_limit: 1000000000,
        method_num: 3,
        sequence: 1,
        params,
        ..Message::default()
    };

    let res = executor
        .execute_message(message, ApplyKind::Explicit, 100)
        .unwrap();

    dbg!(&res);

    assert_eq!(res.msg_receipt.exit_code.value(), 0);

}
