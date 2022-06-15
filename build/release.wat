(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_i64_=>_none (func (param i32 i32 i64)))
 (type $i32_i64_i32_i32_=>_i32 (func (param i32 i64 i32 i32) (result i32)))
 (type $i32_i32_i64_i32_i32_i32_=>_i32 (func (param i32 i32 i64 i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_f64_=>_none (func (param i32 i32 f64)))
 (type $i32_i64_=>_i64 (func (param i32 i64) (result i64)))
 (type $i64_i32_=>_i32 (func (param i64 i32) (result i32)))
 (type $i32_i64_i32_=>_i32 (func (param i32 i64 i32) (result i32)))
 (import "vm" "context" (func $~lib/@zondax/fvm-as-sdk/assembly/env/sys/vm/vm.context (param i32) (result i32)))
 (import "vm" "abort" (func $~lib/@zondax/fvm-as-sdk/assembly/env/sys/vm/vm.abort (param i32 i32 i32) (result i32)))
 (import "ipld" "block_create" (func $~lib/@zondax/fvm-as-sdk/assembly/env/sys/ipld/ipld.create (param i32 i64 i32 i32) (result i32)))
 (import "ipld" "block_link" (func $~lib/@zondax/fvm-as-sdk/assembly/env/sys/ipld/ipld.cid (param i32 i32 i64 i32 i32 i32) (result i32)))
 (import "self" "set_root" (func $~lib/@zondax/fvm-as-sdk/assembly/env/sys/self/self.set_root (param i32) (result i32)))
 (import "self" "root" (func $~lib/@zondax/fvm-as-sdk/assembly/env/sys/self/self.root (param i32 i32 i32) (result i32)))
 (import "ipld" "block_open" (func $~lib/@zondax/fvm-as-sdk/assembly/env/sys/ipld/ipld.open (param i32 i32) (result i32)))
 (import "ipld" "block_read" (func $~lib/@zondax/fvm-as-sdk/assembly/env/sys/ipld/ipld.read (param i32 i32 i32 i32 i32) (result i32)))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/@zondax/assemblyscript-cbor/assembly/types/NULL (mut i32) (i32.const 0))
 (global $~lib/@zondax/assemblyscript-cbor/assembly/types/UNDEFINED (mut i32) (i32.const 0))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 20492))
 (global $~started (mut i32) (i32.const 0))
 (memory $0 1)
 (data (i32.const 1180) "\\")
 (data (i32.const 1192) "\01\00\00\00J\00\00\00c\00o\00n\00s\00t\00r\00u\00c\00t\00o\00r\00 \00i\00n\00v\00o\00k\00e\00d\00 \00b\00y\00 \00n\00o\00n\00-\00i\00n\00i\00t\00 \00a\00c\00t\00o\00r")
 (data (i32.const 1292) "L")
 (data (i32.const 1304) "\01\00\00\004\00\00\00f\00a\00i\00l\00e\00d\00 \00t\00o\00 \00c\00r\00e\00a\00t\00e\00 \00n\00e\00w\00 \00b\00l\00o\00c\00k")
 (data (i32.const 1388) "L")
 (data (i32.const 1400) "\01\00\00\002\00\00\00f\00a\00i\00l\00e\00d\00 \00t\00o\00 \00c\00o\00m\00p\00u\00t\00e\00 \00n\00e\00w\00 \00C\00I\00D")
 (data (i32.const 1468) "\1c")
 (data (i32.const 1480) "\01")
 (data (i32.const 1500) "\1c")
 (data (i32.const 1512) "\01\00\00\00\02\00\00\000")
 (data (i32.const 1532) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
 (data (i32.const 1932) "\1c\04")
 (data (i32.const 1944) "\01\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f")
 (data (i32.const 2988) "\\")
 (data (i32.const 3000) "\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data (i32.const 3084) "\1c")
 (data (i32.const 3096) "\01\00\00\00\02\00\00\00,")
 (data (i32.const 3116) "<")
 (data (i32.const 3128) "\01\00\00\00,\00\00\00f\00a\00i\00l\00e\00d\00 \00t\00o\00 \00s\00e\00t\00 \00r\00o\00o\00t\00 \00C\00I\00D")
 (data (i32.const 3196) "l")
 (data (i32.const 3208) "\01\00\00\00T\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00e\00r\00r\00o\00r\00 \00f\00r\00o\00m\00 \00`\00s\00e\00l\00f\00:\00:\00r\00o\00o\00t\00`\00 \00s\00y\00s\00c\00a\00l\00l")
 (data (i32.const 3340) "<")
 (data (i32.const 3352) "\01\00\00\00$\00\00\00f\00a\00i\00l\00e\00d\00 \00t\00o\00 \00o\00p\00e\00n\00 \00C\00I\00D")
 (data (i32.const 3420) "L")
 (data (i32.const 3432) "\01\00\00\00:\00\00\00f\00a\00i\00l\00e\00d\00 \00t\00o\00 \00r\00e\00a\00d\00 \00b\00l\00o\00c\00k\00 \00f\00r\00o\00m\00 \00C\00I\00D")
 (data (i32.const 3500) "<")
 (data (i32.const 3512) "\01\00\00\00\"\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00u\00p\00c\00a\00s\00t")
 (data (i32.const 3564) "\1c")
 (data (i32.const 3596) "<")
 (data (i32.const 3608) "\01\00\00\00&\00\00\00u\00n\00r\00e\00c\00o\00g\00n\00i\00z\00e\00d\00 \00m\00e\00t\00h\00o\00d")
 (data (i32.const 3660) ",")
 (data (i32.const 3672) "\01\00\00\00\0e\00\00\00c\00o\00u\00n\00t\00e\00r")
 (data (i32.const 3708) "\1c")
 (data (i32.const 3740) ",")
 (data (i32.const 3752) "\01\00\00\00\1a\00\00\00n\00a\00m\00e\00_\00r\00e\00g\00i\00s\00t\00e\00r")
 (data (i32.const 3788) "<")
 (data (i32.const 3800) "\01\00\00\00\1e\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00n\00u\00l\00l")
 (data (i32.const 3856) "\1f\00\00\00 \00\00\00\00\00\00\00 ")
 (data (i32.const 3884) " \00\00\00\00\00\00\00B\00\00\00\00\00\00\00\10A\82")
 (data (i32.const 3912) "\07\00\00\00 ")
 (data (i32.const 3932) "A\00\00\00\02\00\00\00 ")
 (data (i32.const 3968) "\0e\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00\02A\00\00\00\00\00\00 \00\00\00\12\00\00\00 \00\00\00\0f\00\00\00\00\00\00\00\0f\00\00\00\10A\82")
 (data (i32.const 4032) "\0f\00\00\00 \00\00\00\0f\00\00\00\02\t")
 (data (i32.const 4056) "\0f\00\00\00 \00\00\00\0f\00\00\00 \00\00\00\0f\00\00\00 \00\00\00\0f")
 (data (i32.const 4092) "\02A\00\00\00\00\00\00\02A")
 (export "invoke" (func $assembly/index/invoke))
 (export "memory" (memory $0))
 (export "init" (func $~start))
 (func $~lib/rt/itcms/visitRoots
  (local $0 i32)
  (local $1 i32)
  i32.const 1952
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 3008
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  global.get $~lib/@zondax/assemblyscript-cbor/assembly/types/NULL
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $~lib/@zondax/assemblyscript-cbor/assembly/types/UNDEFINED
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $~lib/rt/itcms/pinSpace
  local.tee $1
  i32.load offset=4
  i32.const -4
  i32.and
  local.set $0
  loop $while-continue|0
   local.get $0
   local.get $1
   i32.ne
   if
    local.get $0
    i32.load offset=4
    i32.const 3
    i32.and
    i32.const 3
    i32.ne
    if
     unreachable
    end
    local.get $0
    i32.const 20
    i32.add
    call $~lib/rt/__visit_members
    local.get $0
    i32.load offset=4
    i32.const -4
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#makeGray (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/rt/itcms/iter
  local.get $0
  i32.eq
  if
   local.get $0
   i32.load offset=8
   local.tee $1
   i32.eqz
   if
    unreachable
   end
   local.get $1
   global.set $~lib/rt/itcms/iter
  end
  block $__inlined_func$~lib/rt/itcms/Object#unlink
   local.get $0
   i32.load offset=4
   i32.const -4
   i32.and
   local.tee $1
   i32.eqz
   if
    i32.const 0
    local.get $0
    i32.const 20492
    i32.lt_u
    local.get $0
    i32.load offset=8
    select
    i32.eqz
    if
     unreachable
    end
    br $__inlined_func$~lib/rt/itcms/Object#unlink
   end
   local.get $0
   i32.load offset=8
   local.tee $2
   i32.eqz
   if
    unreachable
   end
   local.get $1
   local.get $2
   i32.store offset=8
   local.get $2
   local.get $2
   i32.load offset=4
   i32.const 3
   i32.and
   local.get $1
   i32.or
   i32.store offset=4
  end
  global.get $~lib/rt/itcms/toSpace
  local.tee $2
  i32.load offset=8
  local.set $1
  local.get $0
  local.get $2
  global.get $~lib/rt/itcms/white
  i32.eqz
  i32.const 2
  local.get $0
  i32.load offset=12
  local.tee $3
  i32.const 1
  i32.le_u
  if (result i32)
   i32.const 1
  else
   i32.const 3856
   i32.load
   local.get $3
   i32.lt_u
   if
    unreachable
   end
   local.get $3
   i32.const 3
   i32.shl
   i32.const 3860
   i32.add
   i32.load
   i32.const 32
   i32.and
  end
  select
  i32.or
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $1
  local.get $1
  i32.load offset=4
  i32.const 3
  i32.and
  local.get $0
  i32.or
  i32.store offset=4
  local.get $2
  local.get $0
  i32.store offset=8
 )
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  i32.eqz
  if
   unreachable
  end
  local.get $2
  i32.const -4
  i32.and
  local.tee $2
  i32.const 12
  i32.lt_u
  if
   unreachable
  end
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   local.get $2
   i32.const 1073741820
   local.get $2
   i32.const 1073741820
   i32.lt_u
   select
   local.tee $2
   i32.clz
   i32.sub
   local.tee $4
   i32.const 7
   i32.sub
   local.set $3
   local.get $2
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $2
  i32.const 16
  i32.lt_u
  local.get $3
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   unreachable
  end
  local.get $1
  i32.load offset=8
  local.set $5
  local.get $1
  i32.load offset=4
  local.tee $4
  if
   local.get $4
   local.get $5
   i32.store offset=8
  end
  local.get $5
  if
   local.get $5
   local.get $4
   i32.store offset=4
  end
  local.get $2
  local.get $3
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=96
  local.get $1
  i32.eq
  if
   local.get $2
   local.get $3
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   local.get $0
   i32.add
   local.get $5
   i32.store offset=96
   local.get $5
   i32.eqz
   if
    local.get $3
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    local.tee $1
    i32.load offset=4
    i32.const -2
    local.get $2
    i32.rotl
    i32.and
    local.set $2
    local.get $1
    local.get $2
    i32.store offset=4
    local.get $2
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const -2
     local.get $3
     i32.rotl
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.eqz
  if
   unreachable
  end
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $4
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $4
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $3
   i32.const 4
   i32.add
   local.get $2
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store
   local.get $1
   i32.const 4
   i32.add
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $4
   i32.load
   local.set $2
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load
   local.tee $1
   i32.load
   local.tee $6
   i32.const 1
   i32.and
   i32.eqz
   if
    unreachable
   end
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $6
   i32.const 4
   i32.add
   local.get $3
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store
  end
  local.get $4
  local.get $2
  i32.const 2
  i32.or
  i32.store
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 12
  i32.lt_u
  if
   unreachable
  end
  local.get $2
  local.get $1
  i32.const 4
  i32.add
  i32.add
  local.get $4
  i32.ne
  if
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   local.get $2
   i32.const 1073741820
   local.get $2
   i32.const 1073741820
   i32.lt_u
   select
   local.tee $2
   i32.clz
   i32.sub
   local.tee $3
   i32.const 7
   i32.sub
   local.set $5
   local.get $2
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $2
  i32.const 16
  i32.lt_u
  local.get $5
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   unreachable
  end
  local.get $2
  local.get $5
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=96
  local.set $3
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  local.get $3
  i32.store offset=8
  local.get $3
  if
   local.get $3
   local.get $1
   i32.store offset=4
  end
  local.get $2
  local.get $5
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  local.get $1
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $5
  i32.shl
  i32.or
  i32.store
  local.get $5
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 1
  local.get $2
  i32.shl
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $2
  i32.gt_u
  if
   unreachable
  end
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.set $1
  local.get $0
  i32.load offset=1568
  local.tee $4
  if
   local.get $1
   local.get $4
   i32.const 4
   i32.add
   i32.lt_u
   if
    unreachable
   end
   local.get $4
   local.get $1
   i32.const 16
   i32.sub
   i32.eq
   if
    local.get $4
    i32.load
    local.set $3
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
   end
  else
   local.get $1
   local.get $0
   i32.const 1572
   i32.add
   i32.lt_u
   if
    unreachable
   end
  end
  local.get $2
  i32.const -16
  i32.and
  local.get $1
  i32.sub
  local.tee $2
  i32.const 20
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $3
  i32.const 2
  i32.and
  local.get $2
  i32.const 8
  i32.sub
  local.tee $2
  i32.const 1
  i32.or
  i32.or
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $2
  local.get $1
  i32.const 4
  i32.add
  i32.add
  local.tee $2
  i32.const 2
  i32.store
  local.get $0
  local.get $2
  i32.store offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/initialize
  (local $0 i32)
  (local $1 i32)
  memory.size
  local.tee $1
  i32.const 0
  i32.le_s
  if (result i32)
   i32.const 1
   local.get $1
   i32.sub
   memory.grow
   i32.const 0
   i32.lt_s
  else
   i32.const 0
  end
  if
   unreachable
  end
  i32.const 20496
  i32.const 0
  i32.store
  i32.const 22064
  i32.const 0
  i32.store
  loop $for-loop|0
   local.get $0
   i32.const 23
   i32.lt_u
   if
    local.get $0
    i32.const 2
    i32.shl
    i32.const 20496
    i32.add
    i32.const 0
    i32.store offset=4
    i32.const 0
    local.set $1
    loop $for-loop|1
     local.get $1
     i32.const 16
     i32.lt_u
     if
      local.get $1
      local.get $0
      i32.const 4
      i32.shl
      i32.add
      i32.const 2
      i32.shl
      i32.const 20496
      i32.add
      i32.const 0
      i32.store offset=96
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|1
     end
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  i32.const 20496
  i32.const 22068
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 20496
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      global.get $~lib/rt/itcms/state
      br_table $case0|0 $case1|0 $case2|0 $break|0
     end
     i32.const 1
     global.set $~lib/rt/itcms/state
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/visitCount
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $2
    global.get $~lib/rt/itcms/iter
    i32.load offset=4
    i32.const -4
    i32.and
    local.set $0
    loop $while-continue|1
     global.get $~lib/rt/itcms/toSpace
     local.get $0
     i32.ne
     if
      local.get $0
      global.set $~lib/rt/itcms/iter
      local.get $0
      i32.load offset=4
      i32.const 3
      i32.and
      local.get $2
      i32.ne
      if
       local.get $0
       local.get $2
       local.get $0
       i32.load offset=4
       i32.const -4
       i32.and
       i32.or
       i32.store offset=4
       i32.const 0
       global.set $~lib/rt/itcms/visitCount
       local.get $0
       i32.const 20
       i32.add
       call $~lib/rt/__visit_members
       global.get $~lib/rt/itcms/visitCount
       return
      end
      local.get $0
      i32.load offset=4
      i32.const -4
      i32.and
      local.set $0
      br $while-continue|1
     end
    end
    i32.const 0
    global.set $~lib/rt/itcms/visitCount
    call $~lib/rt/itcms/visitRoots
    global.get $~lib/rt/itcms/toSpace
    global.get $~lib/rt/itcms/iter
    i32.load offset=4
    i32.const -4
    i32.and
    i32.eq
    if
     global.get $~lib/memory/__stack_pointer
     local.set $0
     loop $while-continue|0
      local.get $0
      i32.const 20492
      i32.lt_u
      if
       local.get $0
       i32.load
       local.tee $1
       if
        local.get $1
        call $byn-split-outlined-A$~lib/rt/itcms/__visit
       end
       local.get $0
       i32.const 4
       i32.add
       local.set $0
       br $while-continue|0
      end
     end
     global.get $~lib/rt/itcms/iter
     i32.load offset=4
     i32.const -4
     i32.and
     local.set $0
     loop $while-continue|2
      global.get $~lib/rt/itcms/toSpace
      local.get $0
      i32.ne
      if
       local.get $0
       i32.load offset=4
       i32.const 3
       i32.and
       local.get $2
       i32.ne
       if
        local.get $0
        local.get $2
        local.get $0
        i32.load offset=4
        i32.const -4
        i32.and
        i32.or
        i32.store offset=4
        local.get $0
        i32.const 20
        i32.add
        call $~lib/rt/__visit_members
       end
       local.get $0
       i32.load offset=4
       i32.const -4
       i32.and
       local.set $0
       br $while-continue|2
      end
     end
     global.get $~lib/rt/itcms/fromSpace
     local.set $0
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/fromSpace
     local.get $0
     global.set $~lib/rt/itcms/toSpace
     local.get $2
     global.set $~lib/rt/itcms/white
     local.get $0
     i32.load offset=4
     i32.const -4
     i32.and
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    return
   end
   global.get $~lib/rt/itcms/iter
   local.tee $0
   global.get $~lib/rt/itcms/toSpace
   i32.ne
   if
    local.get $0
    i32.load offset=4
    local.tee $1
    i32.const -4
    i32.and
    global.set $~lib/rt/itcms/iter
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.get $1
    i32.const 3
    i32.and
    i32.ne
    if
     unreachable
    end
    local.get $0
    i32.const 20492
    i32.lt_u
    if
     local.get $0
     i32.const 0
     i32.store offset=4
     local.get $0
     i32.const 0
     i32.store offset=8
    else
     global.get $~lib/rt/itcms/total
     local.get $0
     i32.load
     i32.const -4
     i32.and
     i32.const 4
     i32.add
     i32.sub
     global.set $~lib/rt/itcms/total
     local.get $0
     i32.const 4
     i32.add
     local.tee $0
     i32.const 20492
     i32.ge_u
     if
      global.get $~lib/rt/tlsf/ROOT
      i32.eqz
      if
       call $~lib/rt/tlsf/initialize
      end
      local.get $0
      i32.const 4
      i32.sub
      local.set $1
      local.get $0
      i32.const 15
      i32.and
      i32.const 1
      local.get $0
      select
      if (result i32)
       i32.const 1
      else
       local.get $1
       i32.load
       i32.const 1
       i32.and
      end
      if
       unreachable
      end
      local.get $1
      local.get $1
      i32.load
      i32.const 1
      i32.or
      i32.store
      global.get $~lib/rt/tlsf/ROOT
      local.get $1
      call $~lib/rt/tlsf/insertBlock
     end
    end
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   local.tee $0
   local.get $0
   i32.store offset=4
   local.get $0
   local.get $0
   i32.store offset=8
   i32.const 0
   global.set $~lib/rt/itcms/state
  end
  i32.const 0
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   i32.const 1
   i32.const 27
   local.get $1
   i32.clz
   i32.sub
   i32.shl
   local.get $1
   i32.add
   i32.const 1
   i32.sub
   local.get $1
   local.get $1
   i32.const 536870910
   i32.lt_u
   select
   local.tee $1
   i32.clz
   i32.sub
   local.tee $3
   i32.const 7
   i32.sub
   local.set $2
   local.get $1
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $1
  i32.const 16
  i32.lt_u
  local.get $2
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   unreachable
  end
  local.get $2
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=4
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $1
   i32.ctz
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   local.get $0
   i32.add
   i32.load offset=96
  else
   local.get $0
   i32.load
   i32.const -1
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.tee $1
   if (result i32)
    local.get $1
    i32.ctz
    local.tee $1
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load offset=4
    local.tee $2
    i32.eqz
    if
     unreachable
    end
    local.get $2
    i32.ctz
    local.get $1
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load offset=96
   else
    i32.const 0
   end
  end
 )
 (func $~lib/rt/itcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   block $__inlined_func$~lib/rt/itcms/interrupt
    i32.const 2048
    local.set $2
    loop $do-loop|0
     local.get $2
     call $~lib/rt/itcms/step
     i32.sub
     local.set $2
     global.get $~lib/rt/itcms/state
     i32.eqz
     if
      global.get $~lib/rt/itcms/total
      i64.extend_i32_u
      i64.const 200
      i64.mul
      i64.const 100
      i64.div_u
      i32.wrap_i64
      i32.const 1024
      i32.add
      global.set $~lib/rt/itcms/threshold
      br $__inlined_func$~lib/rt/itcms/interrupt
     end
     local.get $2
     i32.const 0
     i32.gt_s
     br_if $do-loop|0
    end
    global.get $~lib/rt/itcms/total
    local.tee $2
    local.get $2
    global.get $~lib/rt/itcms/threshold
    i32.sub
    i32.const 1024
    i32.lt_u
    i32.const 10
    i32.shl
    i32.add
    global.set $~lib/rt/itcms/threshold
   end
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  local.get $0
  i32.const 16
  i32.add
  local.tee $2
  i32.const 1073741820
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/rt/tlsf/ROOT
  local.tee $4
  i32.const 12
  local.get $2
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.get $2
  i32.const 12
  i32.le_u
  select
  local.tee $5
  call $~lib/rt/tlsf/searchBlock
  local.tee $2
  i32.eqz
  if
   memory.size
   local.tee $2
   i32.const 4
   local.get $4
   i32.load offset=1568
   local.get $2
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   i32.ne
   i32.shl
   i32.const 1
   i32.const 27
   local.get $5
   i32.clz
   i32.sub
   i32.shl
   i32.const 1
   i32.sub
   local.get $5
   i32.add
   local.get $5
   local.get $5
   i32.const 536870910
   i32.lt_u
   select
   i32.add
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $3
   local.get $2
   local.get $3
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $3
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
   local.get $4
   local.get $2
   i32.const 16
   i32.shl
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   local.get $4
   local.get $5
   call $~lib/rt/tlsf/searchBlock
   local.tee $2
   i32.eqz
   if
    unreachable
   end
  end
  local.get $2
  i32.load
  i32.const -4
  i32.and
  local.get $5
  i32.lt_u
  if
   unreachable
  end
  local.get $4
  local.get $2
  call $~lib/rt/tlsf/removeBlock
  local.get $2
  i32.load
  local.set $3
  local.get $5
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  if
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.get $5
  i32.sub
  local.tee $6
  i32.const 16
  i32.ge_u
  if
   local.get $2
   local.get $3
   i32.const 2
   i32.and
   local.get $5
   i32.or
   i32.store
   local.get $5
   local.get $2
   i32.const 4
   i32.add
   i32.add
   local.tee $3
   local.get $6
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $4
   local.get $3
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $2
   local.get $3
   i32.const -2
   i32.and
   i32.store
   local.get $2
   i32.const 4
   i32.add
   local.get $2
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   local.get $3
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
  local.get $2
  local.get $1
  i32.store offset=12
  local.get $2
  local.get $0
  i32.store offset=16
  global.get $~lib/rt/itcms/fromSpace
  local.tee $1
  i32.load offset=8
  local.set $3
  local.get $2
  global.get $~lib/rt/itcms/white
  local.get $1
  i32.or
  i32.store offset=4
  local.get $2
  local.get $3
  i32.store offset=8
  local.get $3
  local.get $3
  i32.load offset=4
  i32.const 3
  i32.and
  local.get $2
  i32.or
  i32.store offset=4
  local.get $1
  local.get $2
  i32.store offset=8
  global.get $~lib/rt/itcms/total
  local.get $2
  i32.load
  i32.const -4
  i32.and
  i32.const 4
  i32.add
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $2
  i32.const 20
  i32.add
  local.tee $2
  local.set $1
  block $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.eqz
   br_if $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.const 0
   i32.store8
   local.get $0
   local.get $1
   i32.add
   local.tee $3
   i32.const 1
   i32.sub
   i32.const 0
   i32.store8
   local.get $0
   i32.const 2
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.const 0
   i32.store8 offset=1
   local.get $1
   i32.const 0
   i32.store8 offset=2
   local.get $3
   i32.const 2
   i32.sub
   i32.const 0
   i32.store8
   local.get $3
   i32.const 3
   i32.sub
   i32.const 0
   i32.store8
   local.get $0
   i32.const 6
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.const 0
   i32.store8 offset=3
   local.get $3
   i32.const 4
   i32.sub
   i32.const 0
   i32.store8
   local.get $0
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.const 0
   local.get $1
   i32.sub
   i32.const 3
   i32.and
   local.tee $3
   i32.add
   local.tee $1
   i32.const 0
   i32.store
   local.get $1
   local.get $0
   local.get $3
   i32.sub
   i32.const -4
   i32.and
   local.tee $0
   i32.add
   local.tee $3
   i32.const 4
   i32.sub
   i32.const 0
   i32.store
   local.get $0
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.const 0
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store offset=8
   local.get $3
   i32.const 12
   i32.sub
   i32.const 0
   i32.store
   local.get $3
   i32.const 8
   i32.sub
   i32.const 0
   i32.store
   local.get $0
   i32.const 24
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.const 0
   i32.store offset=12
   local.get $1
   i32.const 0
   i32.store offset=16
   local.get $1
   i32.const 0
   i32.store offset=20
   local.get $1
   i32.const 0
   i32.store offset=24
   local.get $3
   i32.const 28
   i32.sub
   i32.const 0
   i32.store
   local.get $3
   i32.const 24
   i32.sub
   i32.const 0
   i32.store
   local.get $3
   i32.const 20
   i32.sub
   i32.const 0
   i32.store
   local.get $3
   i32.const 16
   i32.sub
   i32.const 0
   i32.store
   local.get $1
   local.get $1
   i32.const 4
   i32.and
   i32.const 24
   i32.add
   local.tee $3
   i32.add
   local.set $1
   local.get $0
   local.get $3
   i32.sub
   local.set $0
   loop $while-continue|0
    local.get $0
    i32.const 32
    i32.ge_u
    if
     local.get $1
     i64.const 0
     i64.store
     local.get $1
     i64.const 0
     i64.store offset=8
     local.get $1
     i64.const 0
     i64.store offset=16
     local.get $1
     i64.const 0
     i64.store offset=24
     local.get $0
     i32.const 32
     i32.sub
     local.set $0
     local.get $1
     i32.const 32
     i32.add
     local.set $1
     br $while-continue|0
    end
   end
  end
  local.get $2
 )
 (func $~lib/util/memory/memcpy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  loop $while-continue|0
   local.get $1
   i32.const 3
   i32.and
   i32.const 0
   local.get $2
   select
   if
    local.get $0
    local.tee $3
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    local.tee $4
    i32.const 1
    i32.add
    local.set $1
    local.get $3
    local.get $4
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.const 3
  i32.and
  i32.eqz
  if
   loop $while-continue|1
    local.get $2
    i32.const 16
    i32.ge_u
    if
     local.get $0
     local.get $1
     i32.load
     i32.store
     local.get $0
     local.get $1
     i32.load offset=4
     i32.store offset=4
     local.get $0
     local.get $1
     i32.load offset=8
     i32.store offset=8
     local.get $0
     local.get $1
     i32.load offset=12
     i32.store offset=12
     local.get $1
     i32.const 16
     i32.add
     local.set $1
     local.get $0
     i32.const 16
     i32.add
     local.set $0
     local.get $2
     i32.const 16
     i32.sub
     local.set $2
     br $while-continue|1
    end
   end
   local.get $2
   i32.const 8
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    local.get $1
    i32.load offset=4
    i32.store offset=4
    local.get $1
    i32.const 8
    i32.add
    local.set $1
    local.get $0
    i32.const 8
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 4
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    local.get $0
    i32.const 4
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 2
   i32.and
   if
    local.get $0
    local.get $1
    i32.load16_u
    i32.store16
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    local.get $0
    i32.const 2
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 1
   i32.and
   if
    local.get $0
    local.get $1
    i32.load8_u
    i32.store8
   end
   return
  end
  local.get $2
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      block $case0|2
       local.get $0
       i32.const 3
       i32.and
       i32.const 1
       i32.sub
       br_table $case0|2 $case1|2 $case2|2 $break|2
      end
      local.get $1
      i32.load
      local.set $5
      local.get $0
      local.get $1
      i32.load8_u
      i32.store8
      local.get $0
      local.get $1
      i32.load8_u offset=1
      i32.store8 offset=1
      local.get $0
      i32.const 2
      i32.add
      local.tee $3
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      i32.const 2
      i32.add
      local.tee $4
      i32.const 1
      i32.add
      local.set $1
      local.get $3
      local.get $4
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 3
      i32.sub
      local.set $2
      loop $while-continue|3
       local.get $2
       i32.const 17
       i32.ge_u
       if
        local.get $0
        local.get $1
        i32.load offset=1
        local.tee $3
        i32.const 8
        i32.shl
        local.get $5
        i32.const 24
        i32.shr_u
        i32.or
        i32.store
        local.get $0
        local.get $1
        i32.load offset=5
        local.tee $4
        i32.const 8
        i32.shl
        local.get $3
        i32.const 24
        i32.shr_u
        i32.or
        i32.store offset=4
        local.get $0
        local.get $1
        i32.load offset=9
        local.tee $3
        i32.const 8
        i32.shl
        local.get $4
        i32.const 24
        i32.shr_u
        i32.or
        i32.store offset=8
        local.get $0
        local.get $1
        i32.load offset=13
        local.tee $5
        i32.const 8
        i32.shl
        local.get $3
        i32.const 24
        i32.shr_u
        i32.or
        i32.store offset=12
        local.get $1
        i32.const 16
        i32.add
        local.set $1
        local.get $0
        i32.const 16
        i32.add
        local.set $0
        local.get $2
        i32.const 16
        i32.sub
        local.set $2
        br $while-continue|3
       end
      end
      br $break|2
     end
     local.get $1
     i32.load
     local.set $5
     local.get $0
     local.get $1
     i32.load8_u
     i32.store8
     local.get $0
     local.tee $3
     i32.const 2
     i32.add
     local.set $0
     local.get $1
     local.tee $4
     i32.const 2
     i32.add
     local.set $1
     local.get $3
     local.get $4
     i32.load8_u offset=1
     i32.store8 offset=1
     local.get $2
     i32.const 2
     i32.sub
     local.set $2
     loop $while-continue|4
      local.get $2
      i32.const 18
      i32.ge_u
      if
       local.get $0
       local.get $1
       i32.load offset=2
       local.tee $3
       i32.const 16
       i32.shl
       local.get $5
       i32.const 16
       i32.shr_u
       i32.or
       i32.store
       local.get $0
       local.get $1
       i32.load offset=6
       local.tee $4
       i32.const 16
       i32.shl
       local.get $3
       i32.const 16
       i32.shr_u
       i32.or
       i32.store offset=4
       local.get $0
       local.get $1
       i32.load offset=10
       local.tee $3
       i32.const 16
       i32.shl
       local.get $4
       i32.const 16
       i32.shr_u
       i32.or
       i32.store offset=8
       local.get $0
       local.get $1
       i32.load offset=14
       local.tee $5
       i32.const 16
       i32.shl
       local.get $3
       i32.const 16
       i32.shr_u
       i32.or
       i32.store offset=12
       local.get $1
       i32.const 16
       i32.add
       local.set $1
       local.get $0
       i32.const 16
       i32.add
       local.set $0
       local.get $2
       i32.const 16
       i32.sub
       local.set $2
       br $while-continue|4
      end
     end
     br $break|2
    end
    local.get $1
    i32.load
    local.set $5
    local.get $0
    local.tee $3
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    local.tee $4
    i32.const 1
    i32.add
    local.set $1
    local.get $3
    local.get $4
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    loop $while-continue|5
     local.get $2
     i32.const 19
     i32.ge_u
     if
      local.get $0
      local.get $1
      i32.load offset=3
      local.tee $3
      i32.const 24
      i32.shl
      local.get $5
      i32.const 8
      i32.shr_u
      i32.or
      i32.store
      local.get $0
      local.get $1
      i32.load offset=7
      local.tee $4
      i32.const 24
      i32.shl
      local.get $3
      i32.const 8
      i32.shr_u
      i32.or
      i32.store offset=4
      local.get $0
      local.get $1
      i32.load offset=11
      local.tee $3
      i32.const 24
      i32.shl
      local.get $4
      i32.const 8
      i32.shr_u
      i32.or
      i32.store offset=8
      local.get $0
      local.get $1
      i32.load offset=15
      local.tee $5
      i32.const 24
      i32.shl
      local.get $3
      i32.const 8
      i32.shr_u
      i32.or
      i32.store offset=12
      local.get $1
      i32.const 16
      i32.add
      local.set $1
      local.get $0
      i32.const 16
      i32.add
      local.set $0
      local.get $2
      i32.const 16
      i32.sub
      local.set $2
      br $while-continue|5
     end
    end
   end
  end
  local.get $2
  i32.const 16
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $3
   i32.load8_u
   i32.store8
   local.get $3
   i32.const 2
   i32.add
   local.set $1
   local.get $0
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.set $0
  end
  local.get $2
  i32.const 8
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $3
   i32.load8_u
   i32.store8
   local.get $3
   i32.const 2
   i32.add
   local.set $1
   local.get $0
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.set $0
  end
  local.get $2
  i32.const 4
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $3
   i32.load8_u
   i32.store8
   local.get $3
   i32.const 2
   i32.add
   local.set $1
   local.get $0
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.set $0
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $3
   i32.const 2
   i32.add
   local.set $0
   local.get $1
   local.tee $4
   i32.const 2
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u offset=1
   i32.store8 offset=1
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/memory/memory.copy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $2
   local.set $4
   local.get $0
   local.get $1
   i32.eq
   br_if $~lib/util/memory/memmove|inlined.0
   local.get $1
   local.get $0
   i32.sub
   local.get $4
   i32.sub
   i32.const 0
   local.get $4
   i32.const 1
   i32.shl
   i32.sub
   i32.le_u
   if
    local.get $0
    local.get $1
    local.get $4
    call $~lib/util/memory/memcpy
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $0
   local.get $1
   i32.lt_u
   if
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|0
      local.get $0
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.set $4
       local.get $0
       local.tee $2
       i32.const 1
       i32.add
       local.set $0
       local.get $1
       local.tee $3
       i32.const 1
       i32.add
       local.set $1
       local.get $2
       local.get $3
       i32.load8_u
       i32.store8
       br $while-continue|0
      end
     end
     loop $while-continue|1
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $0
       local.get $1
       i64.load
       i64.store
       local.get $4
       i32.const 8
       i32.sub
       local.set $4
       local.get $0
       i32.const 8
       i32.add
       local.set $0
       local.get $1
       i32.const 8
       i32.add
       local.set $1
       br $while-continue|1
      end
     end
    end
    loop $while-continue|2
     local.get $4
     if
      local.get $0
      local.tee $2
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $3
      i32.const 1
      i32.add
      local.set $1
      local.get $2
      local.get $3
      i32.load8_u
      i32.store8
      local.get $4
      i32.const 1
      i32.sub
      local.set $4
      br $while-continue|2
     end
    end
   else
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|3
      local.get $0
      local.get $4
      i32.add
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
       i32.add
       i32.load8_u
       i32.store8
       br $while-continue|3
      end
     end
     loop $while-continue|4
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $4
       i32.const 8
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
       i32.add
       i64.load
       i64.store
       br $while-continue|4
      end
     end
    end
    loop $while-continue|5
     local.get $4
     if
      local.get $4
      i32.const 1
      i32.sub
      local.tee $4
      local.get $0
      i32.add
      local.get $1
      local.get $4
      i32.add
      i32.load8_u
      i32.store8
      br $while-continue|5
     end
    end
   end
  end
 )
 (func $~lib/util/number/utoa32_dec_lut (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  loop $while-continue|0
   local.get $1
   i32.const 10000
   i32.ge_u
   if
    local.get $1
    i32.const 10000
    i32.rem_u
    local.set $3
    local.get $1
    i32.const 10000
    i32.div_u
    local.set $1
    local.get $2
    i32.const 4
    i32.sub
    local.tee $2
    i32.const 1
    i32.shl
    local.get $0
    i32.add
    local.get $3
    i32.const 100
    i32.div_u
    i32.const 2
    i32.shl
    i32.const 1532
    i32.add
    i64.load32_u
    local.get $3
    i32.const 100
    i32.rem_u
    i32.const 2
    i32.shl
    i32.const 1532
    i32.add
    i64.load32_u
    i64.const 32
    i64.shl
    i64.or
    i64.store
    br $while-continue|0
   end
  end
  local.get $1
  i32.const 100
  i32.ge_u
  if
   local.get $2
   i32.const 2
   i32.sub
   local.tee $2
   i32.const 1
   i32.shl
   local.get $0
   i32.add
   local.get $1
   i32.const 100
   i32.rem_u
   i32.const 2
   i32.shl
   i32.const 1532
   i32.add
   i32.load
   i32.store
   local.get $1
   i32.const 100
   i32.div_u
   local.set $1
  end
  local.get $1
  i32.const 10
  i32.ge_u
  if
   local.get $2
   i32.const 2
   i32.sub
   i32.const 1
   i32.shl
   local.get $0
   i32.add
   local.get $1
   i32.const 2
   i32.shl
   i32.const 1532
   i32.add
   i32.load
   i32.store
  else
   local.get $2
   i32.const 1
   i32.sub
   i32.const 1
   i32.shl
   local.get $0
   i32.add
   local.get $1
   i32.const 48
   i32.add
   i32.store16
  end
 )
 (func $~lib/util/number/itoa_buffered<u8> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 255
  i32.and
  i32.const 10
  i32.lt_u
  if
   local.get $0
   local.get $1
   i32.const 255
   i32.and
   i32.const 48
   i32.or
   i32.store16
   i32.const 1
   return
  end
  local.get $1
  i32.const 255
  i32.and
  local.tee $2
  i32.const 100000
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 100
   i32.lt_u
   if (result i32)
    local.get $2
    i32.const 10
    i32.ge_u
    i32.const 1
    i32.add
   else
    local.get $2
    i32.const 10000
    i32.ge_u
    i32.const 3
    i32.add
    local.get $2
    i32.const 1000
    i32.ge_u
    i32.add
   end
  else
   local.get $2
   i32.const 10000000
   i32.lt_u
   if (result i32)
    local.get $2
    i32.const 1000000
    i32.ge_u
    i32.const 6
    i32.add
   else
    local.get $2
    i32.const 1000000000
    i32.ge_u
    i32.const 8
    i32.add
    local.get $2
    i32.const 100000000
    i32.ge_u
    i32.add
   end
  end
  local.set $1
  local.get $0
  local.get $2
  local.get $1
  call $~lib/util/number/utoa32_dec_lut
  local.get $1
 )
 (func $~lib/typedarray/Uint8Array#join (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=4
  local.set $6
  local.get $0
  i32.load offset=8
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $__inlined_func$~lib/util/string/joinIntegerArray<u8>
   local.get $0
   i32.const 1
   i32.sub
   local.tee $5
   i32.const 0
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 1488
    local.set $0
    br $__inlined_func$~lib/util/string/joinIntegerArray<u8>
   end
   local.get $5
   i32.eqz
   if
    block $__inlined_func$~lib/util/number/utoa32 (result i32)
     local.get $6
     i32.load8_u
     local.set $2
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 4108
     i32.lt_s
     if
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.store
     local.get $2
     i32.eqz
     if
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
      i32.const 1520
      br $__inlined_func$~lib/util/number/utoa32
     end
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.const 100000
     i32.lt_u
     if (result i32)
      local.get $2
      i32.const 100
      i32.lt_u
      if (result i32)
       local.get $2
       i32.const 10
       i32.ge_u
       i32.const 1
       i32.add
      else
       local.get $2
       i32.const 10000
       i32.ge_u
       i32.const 3
       i32.add
       local.get $2
       i32.const 1000
       i32.ge_u
       i32.add
      end
     else
      local.get $2
      i32.const 10000000
      i32.lt_u
      if (result i32)
       local.get $2
       i32.const 1000000
       i32.ge_u
       i32.const 6
       i32.add
      else
       local.get $2
       i32.const 1000000000
       i32.ge_u
       i32.const 8
       i32.add
       local.get $2
       i32.const 100000000
       i32.ge_u
       i32.add
      end
     end
     local.tee $1
     i32.const 1
     i32.shl
     i32.const 1
     call $~lib/rt/itcms/__new
     local.tee $0
     i32.store
     local.get $0
     local.get $2
     local.get $1
     call $~lib/util/number/utoa32_dec_lut
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $0
    end
    local.set $0
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    br $__inlined_func$~lib/util/string/joinIntegerArray<u8>
   end
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.const 3100
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $4
   i32.const 10
   i32.add
   i32.mul
   i32.const 10
   i32.add
   local.tee $3
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store
   i32.const 0
   local.set $0
   loop $for-loop|0
    local.get $0
    local.get $5
    i32.lt_s
    if
     local.get $2
     i32.const 1
     i32.shl
     local.get $1
     i32.add
     local.get $0
     local.get $6
     i32.add
     i32.load8_u
     call $~lib/util/number/itoa_buffered<u8>
     local.get $2
     i32.add
     local.set $2
     local.get $4
     if
      local.get $2
      i32.const 1
      i32.shl
      local.get $1
      i32.add
      i32.const 3104
      local.get $4
      i32.const 1
      i32.shl
      call $~lib/memory/memory.copy
      local.get $2
      local.get $4
      i32.add
      local.set $2
     end
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|0
    end
   end
   local.get $2
   i32.const 1
   i32.shl
   local.get $1
   i32.add
   local.get $5
   local.get $6
   i32.add
   i32.load8_u
   call $~lib/util/number/itoa_buffered<u8>
   local.get $2
   i32.add
   local.tee $0
   local.get $3
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 4108
    i32.lt_s
    if
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.store
    i32.const 0
    local.get $0
    i32.const 0
    local.get $0
    i32.const 0
    i32.gt_s
    select
    local.tee $0
    local.get $1
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    local.tee $4
    local.get $0
    local.get $4
    i32.lt_s
    select
    local.tee $0
    local.get $0
    i32.const 0
    i32.gt_s
    select
    i32.const 1
    i32.shl
    local.set $3
    block $__inlined_func$~lib/string/String#substring
     i32.const 0
     local.get $0
     local.get $0
     i32.const 0
     i32.lt_s
     select
     i32.const 1
     i32.shl
     local.tee $0
     local.get $3
     i32.sub
     local.tee $2
     i32.eqz
     if
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
      i32.const 1488
      local.set $0
      br $__inlined_func$~lib/string/String#substring
     end
     i32.const 0
     local.get $4
     i32.const 1
     i32.shl
     local.get $0
     i32.eq
     local.get $3
     select
     if
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $1
      local.set $0
      br $__inlined_func$~lib/string/String#substring
     end
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.const 1
     call $~lib/rt/itcms/__new
     local.tee $0
     i32.store
     local.get $0
     local.get $1
     local.get $3
     i32.add
     local.get $2
     call $~lib/memory/memory.copy
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    br $__inlined_func$~lib/util/string/joinIntegerArray<u8>
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   local.set $0
  end
  local.get $0
 )
 (func $~lib/dataview/DataView#constructor@varargs (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  block $2of2
   block $1of2
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $1of2 $1of2 $2of2 $outOfRange
    end
    unreachable
   end
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   local.set $1
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store
  local.get $2
  i32.const 12
  i32.const 12
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  local.get $2
  i32.const 0
  i32.store
  local.get $2
  i32.const 0
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store offset=8
  local.get $1
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.gt_u
  local.get $1
  i32.const 1073741820
  i32.gt_u
  i32.or
  if
   unreachable
  end
  local.get $2
  local.get $0
  i32.store
  local.get $0
  if
   local.get $2
   local.get $0
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  local.get $2
  local.get $0
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=8
  local.tee $5
  local.get $2
  i32.shr_u
  local.get $1
  i32.lt_u
  if
   i32.const 1073741820
   local.get $2
   i32.shr_u
   local.get $1
   i32.lt_u
   if
    unreachable
   end
   local.get $0
   i32.load
   local.set $4
   local.get $1
   i32.const 8
   local.get $1
   i32.const 8
   i32.gt_u
   select
   local.get $2
   i32.shl
   local.set $1
   local.get $3
   if
    local.get $5
    i32.const 1
    i32.shl
    local.tee $2
    i32.const 1073741820
    local.get $2
    i32.const 1073741820
    i32.lt_u
    select
    local.tee $2
    local.get $1
    local.get $1
    local.get $2
    i32.lt_u
    select
    local.set $1
   end
   block $__inlined_func$~lib/rt/itcms/__renew
    local.get $4
    i32.const 20
    i32.sub
    local.tee $3
    i32.load
    i32.const -4
    i32.and
    i32.const 16
    i32.sub
    local.get $1
    i32.ge_u
    if
     local.get $3
     local.get $1
     i32.store offset=16
     local.get $4
     local.set $2
     br $__inlined_func$~lib/rt/itcms/__renew
    end
    local.get $1
    local.get $3
    i32.load offset=12
    call $~lib/rt/itcms/__new
    local.tee $2
    local.get $4
    local.get $1
    local.get $3
    i32.load offset=16
    local.tee $3
    local.get $1
    local.get $3
    i32.lt_u
    select
    call $~lib/memory/memory.copy
   end
   local.get $2
   local.get $4
   i32.ne
   if
    local.get $0
    local.get $2
    i32.store
    local.get $0
    local.get $2
    i32.store offset=4
    local.get $2
    if
     local.get $0
     local.get $2
     i32.const 0
     call $byn-split-outlined-A$~lib/rt/itcms/__link
    end
   end
   local.get $0
   local.get $1
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<~lib/@zondax/assemblyscript-cbor/assembly/types/Value>#push (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 1
  i32.add
  local.tee $3
  i32.const 2
  i32.const 1
  call $~lib/array/ensureCapacity
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $1
  if
   local.get $0
   local.get $1
   i32.const 1
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  local.get $0
  local.get $3
  i32.store offset=12
 )
 (func $~lib/util/hash/HASH<~lib/string/String> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  if (result i32)
   local.get $0
   local.tee $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.const 1
   i32.shl
   local.tee $3
   i32.const 16
   i32.ge_u
   if (result i32)
    i32.const 606290984
    local.set $2
    i32.const -2048144777
    local.set $4
    i32.const 1640531535
    local.set $5
    local.get $1
    local.get $3
    i32.add
    i32.const 16
    i32.sub
    local.set $7
    loop $while-continue|0
     local.get $1
     local.get $7
     i32.le_u
     if
      local.get $1
      i32.load
      i32.const -2048144777
      i32.mul
      local.get $2
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $2
      local.get $1
      i32.load offset=4
      i32.const -2048144777
      i32.mul
      local.get $4
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $4
      local.get $1
      i32.load offset=8
      i32.const -2048144777
      i32.mul
      local.get $6
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $6
      local.get $1
      i32.load offset=12
      i32.const -2048144777
      i32.mul
      local.get $5
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $5
      local.get $1
      i32.const 16
      i32.add
      local.set $1
      br $while-continue|0
     end
    end
    local.get $2
    i32.const 1
    i32.rotl
    local.get $4
    i32.const 7
    i32.rotl
    i32.add
    local.get $6
    i32.const 12
    i32.rotl
    i32.add
    local.get $5
    i32.const 18
    i32.rotl
    i32.add
    local.get $3
    i32.add
   else
    local.get $3
    i32.const 374761393
    i32.add
   end
   local.set $2
   local.get $0
   local.get $3
   i32.add
   i32.const 4
   i32.sub
   local.set $4
   loop $while-continue|1
    local.get $1
    local.get $4
    i32.le_u
    if
     local.get $1
     i32.load
     i32.const -1028477379
     i32.mul
     local.get $2
     i32.add
     i32.const 17
     i32.rotl
     i32.const 668265263
     i32.mul
     local.set $2
     local.get $1
     i32.const 4
     i32.add
     local.set $1
     br $while-continue|1
    end
   end
   local.get $0
   local.get $3
   i32.add
   local.set $0
   loop $while-continue|2
    local.get $0
    local.get $1
    i32.gt_u
    if
     local.get $1
     i32.load8_u
     i32.const 374761393
     i32.mul
     local.get $2
     i32.add
     i32.const 11
     i32.rotl
     i32.const -1640531535
     i32.mul
     local.set $2
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $while-continue|2
    end
   end
   local.get $2
   i32.const 15
   i32.shr_u
   local.get $2
   i32.xor
   i32.const -2048144777
   i32.mul
   local.tee $0
   i32.const 13
   i32.shr_u
   local.get $0
   i32.xor
   i32.const -1028477379
   i32.mul
   local.tee $0
   i32.const 16
   i32.shr_u
   local.get $0
   i32.xor
  else
   i32.const 0
  end
 )
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   return
  end
  local.get $1
  i32.const 0
  local.get $0
  select
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.tee $3
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  local.tee $2
  i32.const 7
  i32.and
  local.get $1
  i32.const 7
  i32.and
  i32.or
  i32.eqz
  local.get $3
  local.tee $0
  i32.const 4
  i32.ge_u
  i32.and
  if
   loop $do-loop|0
    local.get $2
    i64.load
    local.get $1
    i64.load
    i64.eq
    if
     local.get $2
     i32.const 8
     i32.add
     local.set $2
     local.get $1
     i32.const 8
     i32.add
     local.set $1
     local.get $0
     i32.const 4
     i32.sub
     local.tee $0
     i32.const 4
     i32.ge_u
     br_if $do-loop|0
    end
   end
  end
  block $__inlined_func$~lib/util/string/compareImpl
   loop $while-continue|1
    local.get $0
    local.tee $3
    i32.const 1
    i32.sub
    local.set $0
    local.get $3
    if
     local.get $2
     i32.load16_u
     local.tee $5
     local.get $1
     i32.load16_u
     local.tee $4
     i32.sub
     local.set $3
     local.get $4
     local.get $5
     i32.ne
     br_if $__inlined_func$~lib/util/string/compareImpl
     local.get $2
     i32.const 2
     i32.add
     local.set $2
     local.get $1
     i32.const 2
     i32.add
     local.set $1
     br $while-continue|1
    end
   end
   i32.const 0
   local.set $3
  end
  local.get $3
  i32.eqz
 )
 (func $~lib/@zondax/assemblyscript-cbor/assembly/types/Handler#setFloat (param $0 i32) (param $1 i32) (param $2 f64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $4
  i32.const 0
  i32.store
  local.get $4
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store
  local.get $3
  i32.const 8
  i32.const 17
  call $~lib/rt/itcms/__new
  local.tee $3
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.tee $5
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $3
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 18
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.store
  end
  local.get $3
  local.get $2
  f64.store
  global.get $~lib/memory/__stack_pointer
  local.get $3
  call $~lib/@zondax/assemblyscript-cbor/assembly/types/Value#constructor
  local.tee $3
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  local.get $3
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  local.get $3
  i32.store
  local.get $0
  local.get $1
  local.get $3
  call $~lib/@zondax/assemblyscript-cbor/assembly/types/Handler#addValue
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@zondax/assemblyscript-cbor/assembly/decoder/CBORDecoder#readLength (param $0 i32) (param $1 i64) (result i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i64.const 24
  i64.lt_u
  if
   local.get $1
   return
  end
  block $folding-inner0
   local.get $1
   i64.const 24
   i64.eq
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 4108
    i32.lt_s
    if
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    i32.const 0
    i32.store
    local.get $2
    local.get $0
    i32.load offset=4
    local.tee $2
    i32.store
    local.get $0
    i32.load offset=8
    local.tee $3
    local.get $2
    i32.load offset=8
    i32.ge_u
    if
     unreachable
    end
    local.get $3
    local.get $2
    i32.load offset=4
    i32.add
    i32.load8_u
    local.set $2
    local.get $0
    local.get $0
    i32.load offset=8
    i32.const 1
    i32.add
    i32.store offset=8
    br $folding-inner0
   end
   local.get $1
   i64.const 25
   i64.eq
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 4108
    i32.lt_s
    if
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    i32.const 0
    i32.store
    local.get $2
    local.get $0
    i32.load offset=4
    local.tee $2
    i32.store
    local.get $0
    i32.load offset=8
    local.tee $3
    i32.const 31
    i32.shr_u
    local.get $2
    i32.load offset=8
    local.get $3
    i32.const 2
    i32.add
    i32.lt_s
    i32.or
    if
     unreachable
    end
    local.get $3
    local.get $2
    i32.load offset=4
    i32.add
    i32.load16_u
    local.set $2
    local.get $0
    local.get $0
    i32.load offset=8
    i32.const 2
    i32.add
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $2
    i32.const 8
    i32.shl
    local.get $2
    i32.const 8
    i32.shr_u
    i32.or
    i32.const 65535
    i32.and
    i64.extend_i32_u
    return
   end
   local.get $1
   i64.const 26
   i64.eq
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 4108
    i32.lt_s
    if
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    i32.const 0
    i32.store
    local.get $2
    local.get $0
    i32.load offset=4
    local.tee $2
    i32.store
    local.get $0
    i32.load offset=8
    local.tee $3
    i32.const 31
    i32.shr_u
    local.get $2
    i32.load offset=8
    local.get $3
    i32.const 4
    i32.add
    i32.lt_s
    i32.or
    if
     unreachable
    end
    local.get $3
    local.get $2
    i32.load offset=4
    i32.add
    i32.load
    local.tee $2
    i32.const -16711936
    i32.and
    i32.const 8
    i32.rotl
    local.get $2
    i32.const 16711935
    i32.and
    i32.const 8
    i32.rotr
    i32.or
    local.set $2
    local.get $0
    local.get $0
    i32.load offset=8
    i32.const 4
    i32.add
    i32.store offset=8
    br $folding-inner0
   end
   local.get $1
   i64.const 27
   i64.eq
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 4108
    i32.lt_s
    if
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    i32.const 0
    i32.store
    local.get $2
    local.get $0
    i32.load offset=4
    local.tee $2
    i32.store
    local.get $0
    i32.load offset=8
    local.tee $3
    i32.const 31
    i32.shr_u
    local.get $2
    i32.load offset=8
    local.get $3
    i32.const 4
    i32.add
    i32.lt_s
    i32.or
    if
     unreachable
    end
    local.get $3
    local.get $2
    i32.load offset=4
    i32.add
    i32.load
    local.tee $2
    i32.const -16711936
    i32.and
    i32.const 8
    i32.rotl
    local.get $2
    i32.const 16711935
    i32.and
    i32.const 8
    i32.rotr
    i32.or
    local.set $3
    local.get $0
    local.get $0
    i32.load offset=8
    i32.const 4
    i32.add
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 4108
    i32.lt_s
    if
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    i32.const 0
    i32.store
    local.get $2
    local.get $0
    i32.load offset=4
    local.tee $4
    i32.store
    local.get $0
    i32.load offset=8
    local.tee $2
    i32.const 31
    i32.shr_u
    local.get $4
    i32.load offset=8
    local.get $2
    i32.const 4
    i32.add
    i32.lt_s
    i32.or
    if
     unreachable
    end
    local.get $2
    local.get $4
    i32.load offset=4
    i32.add
    i32.load
    local.tee $2
    i32.const -16711936
    i32.and
    i32.const 8
    i32.rotl
    local.get $2
    i32.const 16711935
    i32.and
    i32.const 8
    i32.rotr
    i32.or
    local.get $0
    local.get $0
    i32.load offset=8
    i32.const 4
    i32.add
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    i64.extend_i32_u
    local.get $3
    i64.extend_i32_u
    i64.const 32
    i64.shl
    i64.add
    return
   end
   local.get $1
   i64.const 31
   i64.eq
   if
    i64.const -1
    return
   end
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  i64.extend_i32_u
 )
 (func $~lib/@zondax/assemblyscript-cbor/assembly/types/Handler#setInteger (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store
  local.get $3
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $4
  i32.const 0
  i32.store
  local.get $4
  i32.const 8
  i32.const 22
  call $~lib/rt/itcms/__new
  local.tee $4
  i32.store
  local.get $4
  local.get $2
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $4
  call $~lib/@zondax/assemblyscript-cbor/assembly/types/Value#constructor
  local.tee $4
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  local.get $4
  i32.store
  local.get $0
  local.get $1
  local.get $4
  call $~lib/@zondax/assemblyscript-cbor/assembly/types/Handler#addValue
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<i32>#push (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 1
  i32.add
  local.tee $3
  i32.const 2
  i32.const 1
  call $~lib/array/ensureCapacity
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
 )
 (func $~lib/@zondax/assemblyscript-cbor/assembly/decoder/CBORDecoder#appendUtf16Data (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  loop $for-loop|0
   local.get $2
   local.get $4
   i64.extend_i32_s
   i64.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 4108
    i32.lt_s
    if
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $3
    i32.const 0
    i32.store
    local.get $3
    local.get $0
    i32.load offset=4
    local.tee $3
    i32.store
    local.get $0
    i32.load offset=8
    local.tee $5
    local.get $3
    i32.load offset=8
    i32.ge_u
    if
     unreachable
    end
    local.get $5
    local.get $3
    i32.load offset=4
    i32.add
    i32.load8_u
    local.set $3
    local.get $0
    local.get $0
    i32.load offset=8
    i32.const 1
    i32.add
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $3
    i32.const 128
    i32.and
    if
     local.get $3
     i32.const 224
     i32.lt_s
     if (result i64)
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 4108
      i32.lt_s
      if
       unreachable
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $5
      i32.const 0
      i32.store
      local.get $5
      local.get $0
      i32.load offset=4
      local.tee $5
      i32.store
      local.get $0
      i32.load offset=8
      local.tee $6
      local.get $5
      i32.load offset=8
      i32.ge_u
      if
       unreachable
      end
      local.get $6
      local.get $5
      i32.load offset=4
      i32.add
      i32.load8_u
      local.get $0
      local.get $0
      i32.load offset=8
      i32.const 1
      i32.add
      i32.store offset=8
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
      i32.const 63
      i32.and
      local.get $3
      i32.const 31
      i32.and
      i32.const 6
      i32.shl
      i32.or
      local.set $3
      local.get $2
      i64.const 1
      i64.sub
     else
      local.get $3
      i32.const 240
      i32.lt_s
      if (result i64)
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.sub
       global.set $~lib/memory/__stack_pointer
       global.get $~lib/memory/__stack_pointer
       i32.const 4108
       i32.lt_s
       if
        unreachable
       end
       global.get $~lib/memory/__stack_pointer
       local.tee $5
       i32.const 0
       i32.store
       local.get $5
       local.get $0
       i32.load offset=4
       local.tee $5
       i32.store
       local.get $0
       i32.load offset=8
       local.tee $6
       local.get $5
       i32.load offset=8
       i32.ge_u
       if
        unreachable
       end
       local.get $6
       local.get $5
       i32.load offset=4
       i32.add
       i32.load8_u
       local.get $0
       local.get $0
       i32.load offset=8
       i32.const 1
       i32.add
       i32.store offset=8
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       i32.const 63
       i32.and
       i32.const 6
       i32.shl
       i32.const 255
       i32.and
       local.get $3
       i32.const 15
       i32.and
       i32.const 12
       i32.shl
       i32.or
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.sub
       global.set $~lib/memory/__stack_pointer
       global.get $~lib/memory/__stack_pointer
       i32.const 4108
       i32.lt_s
       if
        unreachable
       end
       global.get $~lib/memory/__stack_pointer
       local.tee $3
       i32.const 0
       i32.store
       local.get $3
       local.get $0
       i32.load offset=4
       local.tee $3
       i32.store
       local.get $0
       i32.load offset=8
       local.tee $5
       local.get $3
       i32.load offset=8
       i32.ge_u
       if
        unreachable
       end
       local.get $5
       local.get $3
       i32.load offset=4
       i32.add
       i32.load8_u
       local.get $0
       local.get $0
       i32.load offset=8
       i32.const 1
       i32.add
       i32.store offset=8
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       i32.const 63
       i32.and
       i32.or
       local.set $3
       local.get $2
       i64.const 2
       i64.sub
      else
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.sub
       global.set $~lib/memory/__stack_pointer
       global.get $~lib/memory/__stack_pointer
       i32.const 4108
       i32.lt_s
       if
        unreachable
       end
       global.get $~lib/memory/__stack_pointer
       local.tee $5
       i32.const 0
       i32.store
       local.get $5
       local.get $0
       i32.load offset=4
       local.tee $5
       i32.store
       local.get $0
       i32.load offset=8
       local.tee $6
       local.get $5
       i32.load offset=8
       i32.ge_u
       if
        unreachable
       end
       local.get $6
       local.get $5
       i32.load offset=4
       i32.add
       i32.load8_u
       local.get $0
       local.get $0
       i32.load offset=8
       i32.const 1
       i32.add
       i32.store offset=8
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       i32.const 63
       i32.and
       i32.const 4
       i32.shl
       i32.const 255
       i32.and
       local.get $3
       i32.const 15
       i32.and
       i32.const 18
       i32.shl
       i32.or
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.sub
       global.set $~lib/memory/__stack_pointer
       global.get $~lib/memory/__stack_pointer
       i32.const 4108
       i32.lt_s
       if
        unreachable
       end
       global.get $~lib/memory/__stack_pointer
       local.tee $3
       i32.const 0
       i32.store
       local.get $3
       local.get $0
       i32.load offset=4
       local.tee $3
       i32.store
       local.get $0
       i32.load offset=8
       local.tee $5
       local.get $3
       i32.load offset=8
       i32.ge_u
       if
        unreachable
       end
       local.get $5
       local.get $3
       i32.load offset=4
       i32.add
       i32.load8_u
       local.get $0
       local.get $0
       i32.load offset=8
       i32.const 1
       i32.add
       i32.store offset=8
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       i32.const 63
       i32.and
       i32.const 6
       i32.shl
       i32.const 255
       i32.and
       i32.or
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.sub
       global.set $~lib/memory/__stack_pointer
       global.get $~lib/memory/__stack_pointer
       i32.const 4108
       i32.lt_s
       if
        unreachable
       end
       global.get $~lib/memory/__stack_pointer
       local.tee $3
       i32.const 0
       i32.store
       local.get $3
       local.get $0
       i32.load offset=4
       local.tee $3
       i32.store
       local.get $0
       i32.load offset=8
       local.tee $5
       local.get $3
       i32.load offset=8
       i32.ge_u
       if
        unreachable
       end
       local.get $5
       local.get $3
       i32.load offset=4
       i32.add
       i32.load8_u
       local.get $0
       local.get $0
       i32.load offset=8
       i32.const 1
       i32.add
       i32.store offset=8
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       i32.const 63
       i32.and
       i32.or
       local.set $3
       local.get $2
       i64.const 3
       i64.sub
      end
     end
     local.set $2
    end
    local.get $3
    i32.const 65536
    i32.lt_s
    if
     local.get $1
     local.get $3
     call $~lib/array/Array<i32>#push
    else
     local.get $1
     local.get $3
     i32.const 65536
     i32.sub
     local.tee $3
     i32.const 10
     i32.shr_s
     i32.const 55296
     i32.or
     call $~lib/array/Array<i32>#push
     local.get $1
     local.get $3
     i32.const 1023
     i32.and
     i32.const 56320
     i32.or
     call $~lib/array/Array<i32>#push
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
 )
 (func $~lib/@zondax/assemblyscript-cbor/assembly/types/Handler#setString (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store
  local.get $3
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $4
  i32.const 0
  i32.store
  local.get $4
  i32.const 4
  i32.const 24
  call $~lib/rt/itcms/__new
  local.tee $4
  i32.store
  local.get $4
  local.get $2
  i32.store
  local.get $2
  if
   local.get $4
   local.get $2
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.get $4
  call $~lib/@zondax/assemblyscript-cbor/assembly/types/Value#constructor
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  local.get $2
  i32.store
  local.get $0
  local.get $1
  local.get $2
  call $~lib/@zondax/assemblyscript-cbor/assembly/types/Handler#addValue
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@zondax/assemblyscript-cbor/assembly/types/Handler#setBoolean (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store
  local.get $3
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $4
  i32.const 0
  i32.store
  local.get $4
  i32.const 1
  i32.const 25
  call $~lib/rt/itcms/__new
  local.tee $4
  i32.store
  local.get $4
  local.get $2
  i32.store8
  global.get $~lib/memory/__stack_pointer
  local.get $4
  call $~lib/@zondax/assemblyscript-cbor/assembly/types/Value#constructor
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  local.get $2
  i32.store
  local.get $0
  local.get $1
  local.get $2
  call $~lib/@zondax/assemblyscript-cbor/assembly/types/Handler#addValue
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/register
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i64.const 0
  i64.store
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  call $~lib/map/Map<~lib/string/String,~lib/array/Array<u8>>#constructor
  local.tee $0
  i32.store
  block $__inlined_func$~lib/rt/__instanceof (result i32)
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   local.get $0
   call $assembly/state/State#constructor
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4108
   i32.lt_s
   if
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store
   local.get $0
   i64.const 0
   i64.store offset=8
   local.get $0
   i32.const 0
   i32.store offset=16
   local.get $0
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4108
   i32.lt_s
   if
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i32.const 0
   i32.store
   local.get $4
   i32.const 100
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4108
   i32.lt_s
   if
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   block $__inlined_func$~lib/@zondax/fvm-as-sdk/assembly/wrappers/self/root
    i32.const 3184
    local.get $4
    i32.load offset=4
    local.get $4
    i32.load offset=8
    call $~lib/@zondax/fvm-as-sdk/assembly/env/sys/self/self.root
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 3216
     i32.store
     i32.const 21
     i32.const 3216
     call $~lib/@zondax/fvm-as-sdk/assembly/wrappers/errors/genericAbort
     br $__inlined_func$~lib/@zondax/fvm-as-sdk/assembly/wrappers/self/root
    end
    i32.const 3184
    i32.load
    drop
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   call $~lib/@zondax/fvm-as-sdk/assembly/utils/cid/multihash/cast
   local.set $4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   local.get $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4108
   i32.lt_s
   if
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $6
   i64.const 0
   i64.store
   local.get $6
   local.get $4
   i32.load offset=4
   local.tee $0
   i32.store
   local.get $6
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4108
   i32.lt_s
   if
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   block $__inlined_func$~lib/@zondax/fvm-as-sdk/assembly/wrappers/ipld/open
    i32.const 3312
    local.get $0
    i32.load offset=4
    call $~lib/@zondax/fvm-as-sdk/assembly/env/sys/ipld/ipld.open
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 3360
     i32.store
     i32.const 20
     i32.const 3360
     call $~lib/@zondax/fvm-as-sdk/assembly/wrappers/errors/genericAbort
     i32.const 0
     i64.const 0
     i32.const 0
     call $~lib/@zondax/fvm-as-sdk/assembly/env/types/IpldOpen#constructor
     local.set $0
     br $__inlined_func$~lib/@zondax/fvm-as-sdk/assembly/wrappers/ipld/open
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 3320
    i32.load
    i32.const 3312
    i64.load
    i32.const 3324
    i32.load
    call $~lib/@zondax/fvm-as-sdk/assembly/env/types/IpldOpen#constructor
    local.tee $0
    i32.store offset=4
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   local.get $0
   i32.store offset=4
   local.get $0
   i32.load
   local.set $4
   local.get $0
   i32.load offset=16
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4108
   i32.lt_s
   if
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $6
   i32.const 0
   i32.store
   local.get $6
   local.get $0
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4108
   i32.lt_s
   if
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   block $__inlined_func$~lib/@zondax/fvm-as-sdk/assembly/wrappers/ipld/read
    i32.const 3408
    local.get $4
    i32.const 0
    local.get $0
    i32.load offset=4
    local.get $0
    i32.load offset=8
    call $~lib/@zondax/fvm-as-sdk/assembly/env/sys/ipld/ipld.read
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 3440
     i32.store
     i32.const 20
     i32.const 3440
     call $~lib/@zondax/fvm-as-sdk/assembly/wrappers/errors/genericAbort
     br $__inlined_func$~lib/@zondax/fvm-as-sdk/assembly/wrappers/ipld/read
    end
    i32.const 3408
    i32.load
    drop
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   local.get $0
   i32.load
   local.tee $0
   i32.store offset=8
   local.get $4
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4108
   i32.lt_s
   if
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   i64.const 0
   i64.store
   local.get $5
   i32.const 20
   i32.const 11
   call $~lib/rt/itcms/__new
   local.tee $5
   i32.store
   local.get $5
   i32.const 0
   i32.store
   local.get $5
   i32.const 0
   i32.store offset=4
   local.get $5
   i32.const 0
   i32.store offset=8
   local.get $5
   i32.const 0
   i32.store offset=12
   local.get $5
   i32.const 0
   i32.store offset=16
   local.get $5
   local.get $0
   i32.store
   local.get $0
   if
    local.get $5
    local.get $0
    call $byn-split-outlined-A$~lib/rt/itcms/__link_0
   end
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.load
   local.tee $0
   i32.store offset=4
   i32.const 1
   global.set $~argumentsLength
   local.get $5
   local.get $0
   call $~lib/dataview/DataView#constructor@varargs
   local.tee $0
   i32.store offset=4
   local.get $0
   if
    local.get $5
    local.get $0
    call $byn-split-outlined-A$~lib/rt/itcms/__link_0
   end
   local.get $5
   i32.const 0
   i32.store offset=8
   local.get $5
   i32.const 1488
   i32.store offset=12
   local.get $5
   i32.const 1488
   call $byn-split-outlined-A$~lib/rt/itcms/__link_0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4108
   i32.lt_s
   if
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 4
   i32.const 13
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.tee $6
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4108
   i32.lt_s
   if
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   local.get $0
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 14
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   local.get $0
   i32.store
   local.get $0
   call $~lib/array/Array<~lib/@zondax/assemblyscript-cbor/assembly/types/Value>#constructor
   local.tee $6
   i32.store
   local.get $6
   if
    local.get $0
    local.get $6
    call $byn-split-outlined-A$~lib/rt/itcms/__link_0
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $5
   local.get $0
   i32.store offset=16
   local.get $0
   if
    local.get $5
    local.get $0
    call $byn-split-outlined-A$~lib/rt/itcms/__link_0
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   local.get $5
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4108
   i32.lt_s
   if
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   local.get $5
   call $~lib/@zondax/assemblyscript-cbor/assembly/decoder/CBORDecoder#deserialize
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.load offset=16
   local.tee $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4108
   i32.lt_s
   if
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   i64.const 0
   i64.store
   local.get $5
   local.get $4
   i32.load
   local.tee $6
   i32.store
   local.get $5
   local.get $4
   i32.load
   local.tee $4
   i32.store offset=4
   local.get $4
   i32.load offset=12
   i32.const 1
   i32.sub
   local.set $4
   local.get $5
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4108
   i32.lt_s
   if
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   local.get $6
   i32.load offset=12
   local.get $4
   i32.le_u
   if
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.load offset=4
   local.get $4
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.tee $4
   i32.store
   local.get $4
   i32.eqz
   if
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   local.get $4
   i32.store offset=16
   local.get $3
   local.get $4
   call $~lib/@zondax/fvm-as-sdk/assembly/utils/state/index/BaseState#parse@virtual
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=8
   local.get $3
   i32.const 20
   i32.sub
   i32.load offset=12
   local.tee $0
   i32.const 3856
   i32.load
   i32.le_u
   if
    loop $do-loop|0
     i32.const 1
     local.get $0
     i32.const 6
     i32.eq
     br_if $__inlined_func$~lib/rt/__instanceof
     drop
     local.get $0
     i32.const 3
     i32.shl
     i32.const 3860
     i32.add
     i32.load offset=4
     local.tee $0
     br_if $do-loop|0
    end
   end
   i32.const 0
  end
  i32.eqz
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  local.get $3
  i32.store
  local.get $3
  local.get $3
  i64.load
  i64.const 1
  i64.add
  i64.store
  local.get $3
  call $~lib/@zondax/fvm-as-sdk/assembly/utils/state/index/BaseState#save
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/invoke (param $0 i32) (result i32)
  block $break|0
   block $case2|0
    block $case1|0
     call $~lib/@zondax/fvm-as-sdk/assembly/wrappers/vm/context
     i64.load offset=16
     i32.wrap_i64
     local.tee $0
     i32.const 1
     i32.ne
     if
      local.get $0
      i32.const 2
      i32.eq
      br_if $case1|0
      br $case2|0
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 4108
     i32.lt_s
     if
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     i64.const 0
     i64.store
     block $__inlined_func$~lib/@zondax/fvm-as-sdk/assembly/helpers/utils/isConstructorCaller (result i32)
      call $~lib/@zondax/fvm-as-sdk/assembly/wrappers/vm/context
      i64.load
      i64.const 1
      i64.ne
      if
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.sub
       global.set $~lib/memory/__stack_pointer
       global.get $~lib/memory/__stack_pointer
       i32.const 4108
       i32.lt_s
       if
        unreachable
       end
       global.get $~lib/memory/__stack_pointer
       local.tee $0
       i32.const 0
       i32.store
       local.get $0
       i32.const 1200
       i32.store
       i32.const 18
       i32.const 1200
       call $~lib/@zondax/fvm-as-sdk/assembly/wrappers/errors/genericAbort
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       i32.const 0
       br $__inlined_func$~lib/@zondax/fvm-as-sdk/assembly/helpers/utils/isConstructorCaller
      end
      i32.const 1
     end
     if
      global.get $~lib/memory/__stack_pointer
      call $~lib/map/Map<~lib/string/String,~lib/array/Array<u8>>#constructor
      local.tee $0
      i32.store
      global.get $~lib/memory/__stack_pointer
      i64.const 0
      local.get $0
      call $assembly/state/State#constructor
      local.tee $0
      i32.store offset=4
      local.get $0
      call $~lib/@zondax/fvm-as-sdk/assembly/utils/state/index/BaseState#save
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     br $break|0
    end
    call $assembly/index/register
    br $break|0
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4108
   i32.lt_s
   if
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 3616
   i32.store
   i32.const 22
   i32.const 3616
   call $~lib/@zondax/fvm-as-sdk/assembly/wrappers/errors/genericAbort
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
  end
  i32.const 0
 )
 (func $~lib/@zondax/assemblyscript-cbor/assembly/encoder/CBOREncoder#writeTypeAndLength (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $2
  i64.const 24
  i64.lt_u
  if
   local.get $0
   local.get $2
   local.get $1
   i32.const 5
   i32.shl
   i32.const 255
   i32.and
   i64.extend_i32_u
   i64.or
   i32.wrap_i64
   call $~lib/@zondax/assemblyscript-cbor/assembly/encoder/CBOREncoder#writeUint8
  else
   local.get $2
   i64.const 256
   i64.lt_u
   if
    local.get $0
    local.get $1
    i32.const 5
    i32.shl
    i32.const 24
    i32.or
    call $~lib/@zondax/assemblyscript-cbor/assembly/encoder/CBOREncoder#writeUint8
    local.get $0
    local.get $2
    i32.wrap_i64
    call $~lib/@zondax/assemblyscript-cbor/assembly/encoder/CBOREncoder#writeUint8
   else
    local.get $2
    i64.const 65536
    i64.lt_u
    if
     local.get $0
     local.get $1
     i32.const 5
     i32.shl
     i32.const 25
     i32.or
     call $~lib/@zondax/assemblyscript-cbor/assembly/encoder/CBOREncoder#writeUint8
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 4108
     i32.lt_s
     if
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.store
     local.get $0
     i32.const 2
     call $~lib/@zondax/assemblyscript-cbor/assembly/encoder/CBOREncoder#prepareWrite
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=4
     local.tee $1
     i32.store
     local.get $0
     i32.load offset=8
     local.tee $3
     i32.const 31
     i32.shr_u
     local.get $1
     i32.load offset=8
     local.get $3
     i32.const 2
     i32.add
     i32.lt_s
     i32.or
     if
      unreachable
     end
     local.get $3
     local.get $1
     i32.load offset=4
     i32.add
     local.get $2
     i32.wrap_i64
     local.tee $1
     i32.const 8
     i32.shl
     local.get $1
     i32.const 65535
     i32.and
     i32.const 8
     i32.shr_u
     i32.or
     i32.store16
    else
     local.get $2
     i64.const 4294967296
     i64.lt_u
     if
      local.get $0
      local.get $1
      i32.const 5
      i32.shl
      i32.const 26
      i32.or
      call $~lib/@zondax/assemblyscript-cbor/assembly/encoder/CBOREncoder#writeUint8
      local.get $2
      i32.wrap_i64
      local.set $1
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 4108
      i32.lt_s
      if
       unreachable
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.store
      local.get $0
      i32.const 4
      call $~lib/@zondax/assemblyscript-cbor/assembly/encoder/CBOREncoder#prepareWrite
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=4
      local.tee $4
      i32.store
      local.get $0
      i32.load offset=8
      local.tee $3
      i32.const 31
      i32.shr_u
      local.get $4
      i32.load offset=8
      local.get $3
      i32.const 4
      i32.add
      i32.lt_s
      i32.or
      if
       unreachable
      end
     else
      local.get $0
      local.get $1
      i32.const 5
      i32.shl
      i32.const 27
      i32.or
      call $~lib/@zondax/assemblyscript-cbor/assembly/encoder/CBOREncoder#writeUint8
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 4108
      i32.lt_s
      if
       unreachable
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.store
      local.get $0
      i32.const 8
      call $~lib/@zondax/assemblyscript-cbor/assembly/encoder/CBOREncoder#prepareWrite
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=4
      local.tee $4
      i32.store
      local.get $2
      local.get $2
      i64.const 4294967295
      i64.and
      i32.wrap_i64
      local.tee $1
      i64.extend_i32_u
      i64.sub
      i64.const 32
      i64.shr_u
      i32.wrap_i64
      local.set $5
      local.get $0
      i32.load offset=8
      local.tee $3
      i32.const 31
      i32.shr_u
      local.get $4
      i32.load offset=8
      local.get $3
      i32.const 4
      i32.add
      i32.lt_s
      i32.or
      if
       unreachable
      end
      local.get $3
      local.get $4
      i32.load offset=4
      i32.add
      local.get $5
      i32.const -16711936
      i32.and
      i32.const 8
      i32.rotl
      local.get $5
      i32.const 16711935
      i32.and
      i32.const 8
      i32.rotr
      i32.or
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=4
      local.tee $4
      i32.store
      local.get $0
      i32.load offset=8
      i32.const 4
      i32.add
      local.tee $3
      i32.const 31
      i32.shr_u
      local.get $4
      i32.load offset=8
      local.get $3
      i32.const 4
      i32.add
      i32.lt_s
      i32.or
      if
       unreachable
      end
     end
     local.get $3
     local.get $4
     i32.load offset=4
     i32.add
     local.get $1
     i32.const -16711936
     i32.and
     i32.const 8
     i32.rotl
     local.get $1
     i32.const 16711935
     i32.and
     i32.const 8
     i32.rotr
     i32.or
     i32.store
    end
    local.get $0
    local.get $0
    i32.load offset=8
    local.get $0
    i32.load offset=12
    i32.add
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
   end
  end
 )
 (func $~lib/array/Array<u8>#push (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 1
  i32.add
  local.tee $3
  i32.const 0
  i32.const 1
  call $~lib/array/ensureCapacity
  local.get $2
  local.get $0
  i32.load offset=4
  i32.add
  local.get $1
  i32.store8
  local.get $0
  local.get $3
  i32.store offset=12
 )
 (func $~lib/@zondax/assemblyscript-cbor/assembly/encoder/CBOREncoder#addString (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store
  local.get $2
  i32.const 4
  i32.const 3728
  call $~lib/rt/__newArray
  local.tee $3
  i32.store
  loop $for-loop|0
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   local.get $4
   i32.gt_s
   if
    local.get $1
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    local.get $4
    i32.le_u
    if (result i32)
     i32.const -1
    else
     local.get $4
     i32.const 1
     i32.shl
     local.get $1
     i32.add
     i32.load16_u
    end
    local.tee $2
    i32.const 128
    i32.lt_s
    if
     local.get $3
     local.get $2
     call $~lib/array/Array<u8>#push
    else
     local.get $2
     i32.const 2048
     i32.lt_s
     if
      local.get $3
      local.get $2
      i32.const 6
      i32.shr_s
      i32.const 192
      i32.or
      call $~lib/array/Array<u8>#push
     else
      local.get $2
      i32.const 55296
      i32.lt_s
      if
       local.get $3
       local.get $2
       i32.const 12
       i32.shr_s
       i32.const 224
       i32.or
       call $~lib/array/Array<u8>#push
      else
       local.get $3
       local.get $4
       i32.const 1
       i32.add
       local.tee $4
       local.get $1
       i32.const 20
       i32.sub
       i32.load offset=16
       i32.const 1
       i32.shr_u
       i32.ge_u
       if (result i32)
        i32.const -1
       else
        local.get $4
        i32.const 1
        i32.shl
        local.get $1
        i32.add
        i32.load16_u
       end
       i32.const 1023
       i32.and
       local.get $2
       i32.const 1023
       i32.and
       i32.const 10
       i32.shl
       i32.or
       i32.const 65536
       i32.add
       local.tee $2
       i32.const 18
       i32.shr_u
       i32.const 240
       i32.or
       call $~lib/array/Array<u8>#push
       local.get $3
       local.get $2
       i32.const 12
       i32.shr_s
       i32.const 63
       i32.and
       i32.const 128
       i32.or
       call $~lib/array/Array<u8>#push
      end
      local.get $3
      local.get $2
      i32.const 6
      i32.shr_s
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      call $~lib/array/Array<u8>#push
     end
     local.get $3
     local.get $2
     i32.const 63
     i32.and
     i32.const 128
     i32.or
     call $~lib/array/Array<u8>#push
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  local.get $0
  i32.const 3
  local.get $3
  i64.load32_s offset=12
  call $~lib/@zondax/assemblyscript-cbor/assembly/encoder/CBOREncoder#writeTypeAndLength
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  local.get $3
  i32.load offset=12
  call $~lib/@zondax/assemblyscript-cbor/assembly/encoder/CBOREncoder#prepareWrite
  i32.const 0
  local.set $1
  loop $for-loop|01
   local.get $3
   i32.load offset=12
   local.get $1
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=4
    local.tee $4
    i32.store
    local.get $1
    local.get $0
    i32.load offset=8
    i32.add
    local.set $2
    local.get $3
    i32.load offset=12
    local.get $1
    i32.le_u
    if
     unreachable
    end
    local.get $1
    local.get $3
    i32.load offset=4
    i32.add
    i32.load8_u
    local.set $5
    local.get $4
    i32.load offset=8
    local.get $2
    i32.le_u
    if
     unreachable
    end
    local.get $2
    local.get $4
    i32.load offset=4
    i32.add
    local.get $5
    i32.store8
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|01
   end
  end
  local.get $0
  local.get $0
  i32.load offset=8
  local.get $0
  i32.load offset=12
  i32.add
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<~lib/array/Array<u8>>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.get $1
  i32.le_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   i32.const 2
   i32.const 1
   call $~lib/array/ensureCapacity
   local.get $0
   local.get $3
   i32.store offset=12
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
  local.get $2
  if
   local.get $0
   local.get $2
   i32.const 1
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
 )
 (func $~lib/@zondax/fvm-as-sdk/assembly/utils/state/index/BaseState#encode@virtual (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  i32.const 6
  i32.eq
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4108
   i32.lt_s
   if
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   i64.const 0
   i64.store
   local.get $5
   i64.const 0
   i64.store offset=8
   local.get $5
   i32.const 0
   i32.store offset=16
   local.get $5
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4108
   i32.lt_s
   if
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i64.const 0
   i64.store
   local.get $4
   i32.const 16
   i32.const 28
   call $~lib/rt/itcms/__new
   local.tee $4
   i32.store
   local.get $4
   i32.const 0
   i32.store
   local.get $4
   i32.const 0
   i32.store offset=4
   local.get $4
   i32.const 0
   i32.store offset=8
   local.get $4
   i32.const 0
   i32.store offset=12
   local.get $4
   i32.const 256
   call $~lib/arraybuffer/ArrayBuffer#constructor
   local.tee $6
   i32.store
   local.get $6
   if
    local.get $4
    local.get $6
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.load
   local.tee $6
   i32.store offset=4
   i32.const 1
   global.set $~argumentsLength
   local.get $4
   local.get $6
   call $~lib/dataview/DataView#constructor@varargs
   local.tee $6
   i32.store offset=4
   local.get $6
   if
    local.get $4
    local.get $6
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   local.get $4
   i32.const 0
   i32.store offset=8
   local.get $4
   i32.const 0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $5
   local.get $4
   i32.store
   local.get $4
   i32.const 5
   i64.const 2
   call $~lib/@zondax/assemblyscript-cbor/assembly/encoder/CBOREncoder#writeTypeAndLength
   global.get $~lib/memory/__stack_pointer
   i32.const 3680
   i32.store offset=4
   local.get $4
   i32.const 3680
   call $~lib/@zondax/assemblyscript-cbor/assembly/encoder/CBOREncoder#addString
   local.get $4
   i32.const 0
   local.get $0
   i64.load
   call $~lib/@zondax/assemblyscript-cbor/assembly/encoder/CBOREncoder#writeTypeAndLength
   global.get $~lib/memory/__stack_pointer
   i32.const 3760
   i32.store offset=4
   local.get $4
   i32.const 3760
   call $~lib/@zondax/assemblyscript-cbor/assembly/encoder/CBOREncoder#addString
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=8
   local.tee $5
   i32.store offset=8
   local.get $4
   i32.const 5
   local.get $5
   i64.load32_s offset=20
   call $~lib/@zondax/assemblyscript-cbor/assembly/encoder/CBOREncoder#writeTypeAndLength
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=8
   local.tee $5
   i32.store offset=8
   local.get $5
   i32.load offset=20
   i32.const 0
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $6
    local.get $0
    i32.load offset=8
    local.tee $5
    i32.store offset=8
    local.get $6
    i32.const 8
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 4108
    i32.lt_s
    if
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $7
    i64.const 0
    i64.store
    local.get $5
    i32.load offset=8
    local.set $8
    local.get $5
    i32.load offset=16
    local.set $9
    local.get $7
    i32.const 8
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 4108
    i32.lt_s
    if
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $5
    i64.const 0
    i64.store
    local.get $5
    i32.const 16
    i32.const 29
    call $~lib/rt/itcms/__new
    local.tee $10
    i32.store
    local.get $10
    i32.const 0
    i32.store
    local.get $10
    i32.const 0
    i32.store offset=4
    local.get $10
    i32.const 0
    i32.store offset=8
    local.get $10
    i32.const 0
    i32.store offset=12
    local.get $9
    i32.const 268435455
    i32.gt_u
    if
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.const 8
    local.get $9
    i32.const 8
    i32.gt_u
    select
    i32.const 2
    i32.shl
    local.tee $11
    i32.const 0
    call $~lib/rt/itcms/__new
    local.tee $5
    i32.store offset=4
    local.get $10
    local.get $5
    i32.store
    local.get $5
    if
     local.get $10
     local.get $5
     i32.const 0
     call $byn-split-outlined-A$~lib/rt/itcms/__link
    end
    local.get $10
    local.get $5
    i32.store offset=4
    local.get $10
    local.get $11
    i32.store offset=8
    local.get $10
    local.get $9
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $7
    local.get $10
    i32.store
    loop $for-loop|0
     local.get $2
     local.get $9
     i32.lt_s
     if
      local.get $2
      i32.const 12
      i32.mul
      local.get $8
      i32.add
      local.tee $5
      i32.load offset=8
      i32.const 1
      i32.and
      i32.eqz
      if
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.load offset=4
       local.tee $5
       i32.store offset=4
       local.get $10
       local.get $1
       local.get $5
       call $~lib/array/Array<~lib/array/Array<u8>>#__set
       local.get $1
       i32.const 1
       i32.add
       local.set $1
      end
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|0
     end
    end
    local.get $10
    local.get $1
    i32.const 2
    i32.const 0
    call $~lib/array/ensureCapacity
    local.get $10
    local.get $1
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $6
    local.get $10
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=8
    local.tee $1
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 4108
    i32.lt_s
    if
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $5
    i64.const 0
    i64.store
    local.get $1
    i32.load offset=8
    local.set $6
    local.get $1
    i32.load offset=16
    local.set $7
    local.get $5
    i32.const 8
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 4108
    i32.lt_s
    if
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    i64.const 0
    i64.store
    local.get $1
    i32.const 16
    i32.const 30
    call $~lib/rt/itcms/__new
    local.tee $8
    i32.store
    local.get $8
    i32.const 0
    i32.store
    local.get $8
    i32.const 0
    i32.store offset=4
    local.get $8
    i32.const 0
    i32.store offset=8
    local.get $8
    i32.const 0
    i32.store offset=12
    local.get $7
    i32.const 268435455
    i32.gt_u
    if
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.const 8
    local.get $7
    i32.const 8
    i32.gt_u
    select
    i32.const 2
    i32.shl
    local.tee $1
    i32.const 0
    call $~lib/rt/itcms/__new
    local.tee $9
    i32.store offset=4
    local.get $8
    local.get $9
    i32.store
    local.get $9
    if
     local.get $8
     local.get $9
     i32.const 0
     call $byn-split-outlined-A$~lib/rt/itcms/__link
    end
    local.get $8
    local.get $9
    i32.store offset=4
    local.get $8
    local.get $1
    i32.store offset=8
    local.get $8
    local.get $7
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $5
    local.get $8
    i32.store
    i32.const 0
    local.set $1
    loop $for-loop|07
     local.get $3
     local.get $7
     i32.lt_s
     if
      local.get $3
      i32.const 12
      i32.mul
      local.get $6
      i32.add
      local.tee $5
      i32.load offset=8
      i32.const 1
      i32.and
      i32.eqz
      if
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.load
       local.tee $5
       i32.store offset=4
       local.get $8
       local.get $1
       local.get $5
       call $~lib/array/Array<~lib/array/Array<u8>>#__set
       local.get $1
       i32.const 1
       i32.add
       local.set $1
      end
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $for-loop|07
     end
    end
    local.get $8
    local.get $1
    i32.const 2
    i32.const 0
    call $~lib/array/ensureCapacity
    local.get $8
    local.get $1
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $8
    i32.store offset=16
    i32.const 0
    local.set $1
    loop $for-loop|010
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=8
     local.tee $2
     i32.store offset=8
     local.get $2
     i32.load offset=20
     local.get $1
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 4108
      i32.lt_s
      if
       unreachable
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.store
      local.get $8
      i32.load offset=12
      local.get $1
      i32.le_u
      if
       unreachable
      end
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.load offset=4
      local.get $1
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.tee $2
      i32.store
      local.get $2
      i32.eqz
      if
       unreachable
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store offset=4
      local.get $4
      local.get $2
      call $~lib/@zondax/assemblyscript-cbor/assembly/encoder/CBOREncoder#addString
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 4108
      i32.lt_s
      if
       unreachable
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.store
      local.get $10
      i32.load offset=12
      local.get $1
      i32.le_u
      if
       unreachable
      end
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.load offset=4
      local.get $1
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.tee $2
      i32.store
      local.get $2
      i32.eqz
      if
       unreachable
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store offset=4
      local.get $4
      i32.const 4
      local.get $2
      i64.load32_s offset=12
      call $~lib/@zondax/assemblyscript-cbor/assembly/encoder/CBOREncoder#writeTypeAndLength
      i32.const 0
      local.set $3
      loop $for-loop|018
       local.get $2
       i32.load offset=12
       local.get $3
       i32.gt_s
       if
        local.get $2
        i32.load offset=12
        local.get $3
        i32.le_u
        if
         unreachable
        end
        local.get $4
        i32.const 0
        local.get $3
        local.get $2
        i32.load offset=4
        i32.add
        i64.load8_u
        call $~lib/@zondax/assemblyscript-cbor/assembly/encoder/CBOREncoder#writeTypeAndLength
        local.get $3
        i32.const 1
        i32.add
        local.set $3
        br $for-loop|018
       end
      end
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|010
     end
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4108
   i32.lt_s
   if
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   local.get $4
   i32.load
   local.tee $1
   i32.store
   local.get $4
   i32.load offset=8
   local.set $2
   local.get $0
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4108
   i32.lt_s
   if
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   i32.const 0
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   local.tee $3
   local.get $3
   i32.const 0
   i32.gt_s
   select
   local.set $4
   local.get $0
   local.get $2
   i32.const 0
   i32.lt_s
   if (result i32)
    local.get $2
    local.get $3
    i32.add
    local.tee $0
    i32.const 0
    local.get $0
    i32.const 0
    i32.gt_s
    select
   else
    local.get $2
    local.get $3
    local.get $2
    local.get $3
    i32.lt_s
    select
   end
   local.get $4
   i32.sub
   local.tee $0
   i32.const 0
   local.get $0
   i32.const 0
   i32.gt_s
   select
   local.tee $0
   i32.const 0
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store
   local.get $2
   local.get $1
   local.get $4
   i32.add
   local.get $0
   call $~lib/memory/memory.copy
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  end
  unreachable
 )
 (func $~lib/@zondax/fvm-as-sdk/assembly/utils/state/index/BaseState#parse@virtual (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  i32.const 6
  i32.eq
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4108
   i32.lt_s
   if
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store
   local.get $0
   i64.const 0
   i64.store offset=8
   local.get $0
   i64.const 0
   i64.store offset=16
   local.get $0
   call $~lib/map/Map<~lib/string/String,~lib/array/Array<u8>>#constructor
   local.tee $3
   i32.store
   local.get $1
   if (result i32)
    block $__inlined_func$~lib/rt/__instanceof (result i32)
     local.get $1
     i32.const 20
     i32.sub
     i32.load offset=12
     local.tee $2
     i32.const 3856
     i32.load
     i32.le_u
     if
      loop $do-loop|0
       i32.const 1
       local.get $2
       i32.const 19
       i32.eq
       br_if $__inlined_func$~lib/rt/__instanceof
       drop
       local.get $2
       i32.const 3
       i32.shl
       i32.const 3860
       i32.add
       i32.load offset=4
       local.tee $2
       br_if $do-loop|0
      end
     end
     i32.const 0
    end
   else
    i32.const 0
   end
   if (result i64)
    block $__inlined_func$~lib/rt/__instanceof0 (result i32)
     local.get $1
     i32.const 20
     i32.sub
     i32.load offset=12
     local.tee $2
     i32.const 3856
     i32.load
     i32.le_u
     if
      loop $do-loop|02
       i32.const 1
       local.get $2
       i32.const 19
       i32.eq
       br_if $__inlined_func$~lib/rt/__instanceof0
       drop
       local.get $2
       i32.const 3
       i32.shl
       i32.const 3860
       i32.add
       i32.load offset=4
       local.tee $2
       br_if $do-loop|02
      end
     end
     i32.const 0
    end
    i32.eqz
    if
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    local.get $1
    i32.store offset=4
    local.get $0
    i32.const 3680
    i32.store offset=8
    local.get $0
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 4108
    i32.lt_s
    if
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    i32.const 0
    i32.store
    local.get $0
    local.get $1
    i32.load
    local.tee $0
    i32.store
    local.get $0
    i32.const 3680
    i32.const 3680
    call $~lib/util/hash/HASH<~lib/string/String>
    call $~lib/map/Map<~lib/string/String,~lib/@zondax/assemblyscript-cbor/assembly/types/Value>#find
    i32.const 0
    i32.ne
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    if (result i64)
     block $__inlined_func$~lib/rt/__instanceof4 (result i32)
      global.get $~lib/memory/__stack_pointer
      local.tee $2
      i32.const 3680
      i32.store offset=16
      local.get $2
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 4108
      i32.lt_s
      if
       unreachable
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $0
      i32.const 0
      i32.store
      local.get $0
      local.get $1
      i32.load
      local.tee $0
      i32.store
      block $__inlined_func$~lib/@zondax/assemblyscript-cbor/assembly/types/Obj#get
       local.get $0
       i32.const 3680
       i32.const 3680
       call $~lib/util/hash/HASH<~lib/string/String>
       call $~lib/map/Map<~lib/string/String,~lib/@zondax/assemblyscript-cbor/assembly/types/Value>#find
       i32.eqz
       if
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.add
        global.set $~lib/memory/__stack_pointer
        i32.const 0
        local.set $0
        br $__inlined_func$~lib/@zondax/assemblyscript-cbor/assembly/types/Obj#get
       end
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.load
       local.tee $0
       i32.store
       local.get $0
       i32.const 3680
       i32.const 3680
       call $~lib/util/hash/HASH<~lib/string/String>
       call $~lib/map/Map<~lib/string/String,~lib/@zondax/assemblyscript-cbor/assembly/types/Value>#find
       local.tee $0
       i32.eqz
       if
        unreachable
       end
       local.get $0
       i32.load offset=4
       local.set $0
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
      end
      local.get $2
      local.get $0
      i32.store offset=20
      local.get $0
      i32.eqz
      if
       unreachable
      end
      local.get $2
      local.get $0
      i32.store offset=20
      local.get $0
      i32.const 20
      i32.sub
      i32.load offset=12
      local.tee $2
      i32.const 3856
      i32.load
      i32.le_u
      if
       loop $do-loop|08
        i32.const 1
        local.get $2
        i32.const 22
        i32.eq
        br_if $__inlined_func$~lib/rt/__instanceof4
        drop
        local.get $2
        i32.const 3
        i32.shl
        i32.const 3860
        i32.add
        i32.load offset=4
        local.tee $2
        br_if $do-loop|08
       end
      end
      i32.const 0
     end
     i32.eqz
     if
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=12
     local.get $0
     i64.load
    else
     i64.const 0
    end
   else
    i64.const 0
   end
   local.get $3
   call $assembly/state/State#constructor
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  unreachable
 )
 (func $~lib/map/Map<~lib/string/String,~lib/array/Array<u8>>~visit (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load
  local.tee $1
  if
   local.get $1
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  local.get $0
  i32.load offset=8
  local.tee $1
  local.tee $0
  i32.add
  local.set $2
  loop $while-continue|0
   local.get $0
   local.get $2
   i32.lt_u
   if
    local.get $0
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $0
     i32.load
     local.tee $3
     if
      local.get $3
      call $byn-split-outlined-A$~lib/rt/itcms/__visit
     end
     local.get $0
     i32.load offset=4
     local.tee $3
     if
      local.get $3
      call $byn-split-outlined-A$~lib/rt/itcms/__visit
     end
    end
    local.get $0
    i32.const 12
    i32.add
    local.set $0
    br $while-continue|0
   end
  end
  local.get $1
  if
   local.get $1
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
 )
 (func $~lib/@zondax/fvm-as-sdk/assembly/env/types/Cid~visit (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load
  local.tee $1
  if
   local.get $1
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=4
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $folding-inner3
   block $folding-inner2
    block $folding-inner1
     block $invalid
      block $~lib/@zondax/assemblyscript-cbor/assembly/encoder/CBOREncoder
       block $~lib/@zondax/assemblyscript-cbor/assembly/types/Undefined
        block $~lib/@zondax/assemblyscript-cbor/assembly/types/Null
         block $~lib/@zondax/assemblyscript-cbor/assembly/types/Bool
          block $~lib/@zondax/assemblyscript-cbor/assembly/types/Integer
           block $~lib/map/Map<~lib/string/String,~lib/@zondax/assemblyscript-cbor/assembly/types/Value>
            block $~lib/@zondax/assemblyscript-cbor/assembly/types/Num
             block $~lib/@zondax/assemblyscript-cbor/assembly/types/Float
              block $~lib/@zondax/assemblyscript-cbor/assembly/types/Value
               block $~lib/@zondax/assemblyscript-cbor/assembly/types/JSONHandler
                block $~lib/@zondax/assemblyscript-cbor/assembly/decoder/CBORDecoder
                 block $~lib/@zondax/fvm-as-sdk/assembly/env/types/IpldOpen
                  block $~lib/@zondax/fvm-as-sdk/assembly/env/types/Cid
                   block $~lib/@zondax/fvm-as-sdk/assembly/utils/state/index/BaseState
                    block $assembly/state/State
                     block $~lib/map/Map<~lib/string/String,~lib/array/Array<u8>>
                      block $~lib/@zondax/fvm-as-sdk/assembly/env/types/InvocationContext
                       block $~lib/string/String
                        block $~lib/arraybuffer/ArrayBuffer
                         local.get $0
                         i32.const 8
                         i32.sub
                         i32.load
                         br_table $~lib/arraybuffer/ArrayBuffer $~lib/string/String $folding-inner2 $~lib/@zondax/fvm-as-sdk/assembly/env/types/InvocationContext $folding-inner3 $~lib/map/Map<~lib/string/String,~lib/array/Array<u8>> $assembly/state/State $~lib/@zondax/fvm-as-sdk/assembly/utils/state/index/BaseState $~lib/@zondax/fvm-as-sdk/assembly/env/types/Cid $folding-inner2 $~lib/@zondax/fvm-as-sdk/assembly/env/types/IpldOpen $~lib/@zondax/assemblyscript-cbor/assembly/decoder/CBORDecoder $folding-inner2 $folding-inner3 $~lib/@zondax/assemblyscript-cbor/assembly/types/JSONHandler $~lib/@zondax/assemblyscript-cbor/assembly/types/Value $folding-inner1 $~lib/@zondax/assemblyscript-cbor/assembly/types/Float $~lib/@zondax/assemblyscript-cbor/assembly/types/Num $folding-inner3 $~lib/map/Map<~lib/string/String,~lib/@zondax/assemblyscript-cbor/assembly/types/Value> $folding-inner3 $~lib/@zondax/assemblyscript-cbor/assembly/types/Integer $folding-inner3 $folding-inner3 $~lib/@zondax/assemblyscript-cbor/assembly/types/Bool $~lib/@zondax/assemblyscript-cbor/assembly/types/Null $~lib/@zondax/assemblyscript-cbor/assembly/types/Undefined $~lib/@zondax/assemblyscript-cbor/assembly/encoder/CBOREncoder $folding-inner1 $folding-inner1 $invalid
                        end
                        return
                       end
                       return
                      end
                      return
                     end
                     local.get $0
                     call $~lib/map/Map<~lib/string/String,~lib/array/Array<u8>>~visit
                     return
                    end
                    local.get $0
                    i32.load offset=8
                    local.tee $0
                    if
                     local.get $0
                     call $byn-split-outlined-A$~lib/rt/itcms/__visit
                    end
                    return
                   end
                   return
                  end
                  local.get $0
                  call $~lib/@zondax/fvm-as-sdk/assembly/env/types/Cid~visit
                  return
                 end
                 return
                end
                local.get $0
                i32.load
                local.tee $1
                if
                 local.get $1
                 call $byn-split-outlined-A$~lib/rt/itcms/__visit
                end
                local.get $0
                i32.load offset=4
                local.tee $1
                if
                 local.get $1
                 call $byn-split-outlined-A$~lib/rt/itcms/__visit
                end
                local.get $0
                i32.load offset=12
                local.tee $1
                if
                 local.get $1
                 call $byn-split-outlined-A$~lib/rt/itcms/__visit
                end
                local.get $0
                i32.load offset=16
                local.tee $0
                if
                 local.get $0
                 call $byn-split-outlined-A$~lib/rt/itcms/__visit
                end
                return
               end
               return
              end
              return
             end
             return
            end
            return
           end
           local.get $0
           call $~lib/map/Map<~lib/string/String,~lib/array/Array<u8>>~visit
           return
          end
          return
         end
         return
        end
        return
       end
       return
      end
      local.get $0
      call $~lib/@zondax/fvm-as-sdk/assembly/env/types/Cid~visit
      return
     end
     unreachable
    end
    local.get $0
    i32.load offset=4
    local.tee $1
    local.get $0
    i32.load offset=12
    i32.const 2
    i32.shl
    i32.add
    local.set $2
    loop $while-continue|0
     local.get $1
     local.get $2
     i32.lt_u
     if
      local.get $1
      i32.load
      local.tee $3
      if
       local.get $3
       call $byn-split-outlined-A$~lib/rt/itcms/__visit
      end
      local.get $1
      i32.const 4
      i32.add
      local.set $1
      br $while-continue|0
     end
    end
    br $folding-inner3
   end
   local.get $0
   i32.load
   local.tee $0
   if
    local.get $0
    call $byn-split-outlined-A$~lib/rt/itcms/__visit
   end
   return
  end
  local.get $0
  i32.load
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
 )
 (func $~start
  (local $0 i32)
  global.get $~started
  if
   return
  end
  i32.const 1
  global.set $~started
  memory.size
  i32.const 16
  i32.shl
  i32.const 20492
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 1092
  i32.const 1088
  i32.store
  i32.const 1096
  i32.const 1088
  i32.store
  i32.const 1088
  global.set $~lib/rt/itcms/pinSpace
  i32.const 1124
  i32.const 1120
  i32.store
  i32.const 1128
  i32.const 1120
  i32.store
  i32.const 1120
  global.set $~lib/rt/itcms/toSpace
  i32.const 1156
  i32.const 1152
  i32.store
  i32.const 1160
  i32.const 1152
  i32.store
  i32.const 1152
  global.set $~lib/rt/itcms/fromSpace
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.const 26
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@zondax/assemblyscript-cbor/assembly/types/Value#constructor
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
  global.set $~lib/@zondax/assemblyscript-cbor/assembly/types/NULL
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.const 27
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/@zondax/assemblyscript-cbor/assembly/types/Value#constructor
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
  global.set $~lib/@zondax/assemblyscript-cbor/assembly/types/UNDEFINED
 )
 (func $~lib/@zondax/fvm-as-sdk/assembly/utils/cid/multihash/cast (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i64.const 0
  i64.store offset=8
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.lt_s
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 1488
   i32.store
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   i32.const 1488
   local.get $0
   i32.const 0
   call $~lib/@zondax/fvm-as-sdk/assembly/env/types/Cid#constructor
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.le_u
  if
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.load8_u offset=1
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $4
  i32.const 0
  i32.store
  i32.const 0
  local.get $0
  i32.load offset=8
  local.tee $5
  local.get $5
  i32.const 0
  i32.gt_s
  select
  local.set $1
  local.get $4
  i32.const 0
  if (result i32)
   local.get $2
   local.get $5
   i32.add
   local.tee $4
   i32.const 0
   local.get $4
   i32.const 0
   i32.gt_s
   select
  else
   local.get $2
   local.get $5
   local.get $2
   local.get $5
   i32.lt_s
   select
  end
  local.get $1
  i32.sub
  local.tee $4
  i32.const 0
  local.get $4
  i32.const 0
  i32.gt_s
  select
  local.tee $4
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $5
  i32.store
  local.get $5
  i32.load offset=4
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  local.get $4
  call $~lib/memory/memory.copy
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  local.get $5
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 3104
  i32.store
  local.get $5
  call $~lib/typedarray/Uint8Array#join
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  local.get $1
  local.get $5
  local.get $2
  call $~lib/@zondax/fvm-as-sdk/assembly/env/types/Cid#constructor
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@zondax/fvm-as-sdk/assembly/utils/state/index/BaseState#save (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $0
  call $~lib/@zondax/fvm-as-sdk/assembly/utils/state/index/BaseState#encode@virtual
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  i32.const 1
  global.set $~argumentsLength
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  local.set $3
  local.get $2
  i32.const 12
  i32.const 9
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  local.get $2
  local.get $0
  i32.store
  local.get $0
  if
   local.get $2
   local.get $0
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  local.get $2
  local.get $3
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $__inlined_func$~lib/@zondax/fvm-as-sdk/assembly/wrappers/ipld/create
   i32.const 1280
   i64.const 113
   local.get $2
   i32.load offset=4
   local.get $2
   i32.load offset=8
   call $~lib/@zondax/fvm-as-sdk/assembly/env/sys/ipld/ipld.create
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 1312
    i32.store
    i32.const 20
    i32.const 1312
    call $~lib/@zondax/fvm-as-sdk/assembly/wrappers/errors/genericAbort
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 0
    local.set $0
    br $__inlined_func$~lib/@zondax/fvm-as-sdk/assembly/wrappers/ipld/create
   end
   i32.const 1280
   i32.load
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 100
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $__inlined_func$~lib/@zondax/fvm-as-sdk/assembly/wrappers/ipld/cid
   i32.const 1376
   local.get $0
   i64.const 45600
   i32.const 32
   local.get $2
   i32.load offset=4
   local.get $2
   i32.load offset=8
   call $~lib/@zondax/fvm-as-sdk/assembly/env/sys/ipld/ipld.cid
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 1408
    i32.store
    i32.const 20
    i32.const 1408
    call $~lib/@zondax/fvm-as-sdk/assembly/wrappers/errors/genericAbort
    br $__inlined_func$~lib/@zondax/fvm-as-sdk/assembly/wrappers/ipld/cid
   end
   i32.const 1376
   i32.load
   drop
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  call $~lib/@zondax/fvm-as-sdk/assembly/utils/cid/multihash/cast
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.load offset=4
  i32.load offset=4
  call $~lib/@zondax/fvm-as-sdk/assembly/env/sys/self/self.set_root
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 3136
   i32.store
   i32.const 20
   i32.const 3136
   call $~lib/@zondax/fvm-as-sdk/assembly/wrappers/errors/genericAbort
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/map/Map<~lib/string/String,~lib/@zondax/assemblyscript-cbor/assembly/types/Value>#find (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  local.get $2
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $0
  loop $while-continue|0
   local.get $0
   if
    local.get $0
    i32.load offset=8
    local.tee $2
    i32.const 1
    i32.and
    if (result i32)
     i32.const 0
    else
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load
     local.tee $3
     i32.store
     local.get $3
     local.get $1
     call $~lib/string/String.__eq
    end
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $0
     return
    end
    local.get $2
    i32.const -2
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $~lib/@zondax/assemblyscript-cbor/assembly/types/Obj#set<~lib/@zondax/assemblyscript-cbor/assembly/types/Value> (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store
  local.get $3
  local.get $0
  i32.load
  local.tee $10
  i32.store
  local.get $3
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  local.get $2
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $10
  local.get $1
  local.tee $4
  local.get $1
  call $~lib/util/hash/HASH<~lib/string/String>
  local.tee $7
  call $~lib/map/Map<~lib/string/String,~lib/@zondax/assemblyscript-cbor/assembly/types/Value>#find
  local.tee $0
  if
   local.get $0
   local.get $3
   i32.store offset=4
   local.get $3
   if
    local.get $10
    local.get $3
    i32.const 1
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
  else
   local.get $10
   i32.load offset=16
   local.get $10
   i32.load offset=12
   i32.eq
   if
    local.get $10
    i32.load offset=20
    local.get $10
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $10
     i32.load offset=4
    else
     local.get $10
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    local.set $6
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 4108
    i32.lt_s
    if
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    i64.const 0
    i64.store
    local.get $0
    i32.const 0
    i32.store offset=8
    local.get $0
    local.get $6
    i32.const 1
    i32.add
    local.tee $0
    i32.const 2
    i32.shl
    call $~lib/arraybuffer/ArrayBuffer#constructor
    local.tee $5
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.const 3
    i32.shl
    i32.const 3
    i32.div_s
    local.tee $8
    i32.const 12
    i32.mul
    call $~lib/arraybuffer/ArrayBuffer#constructor
    local.tee $0
    i32.store offset=4
    local.get $10
    i32.load offset=8
    local.tee $2
    local.get $10
    i32.load offset=16
    i32.const 12
    i32.mul
    i32.add
    local.set $9
    local.get $0
    local.set $1
    loop $while-continue|0
     local.get $2
     local.get $9
     i32.ne
     if
      local.get $2
      i32.load offset=8
      i32.const 1
      i32.and
      i32.eqz
      if
       global.get $~lib/memory/__stack_pointer
       local.get $2
       i32.load
       local.tee $11
       i32.store offset=8
       local.get $1
       local.get $11
       i32.store
       local.get $1
       local.get $2
       i32.load offset=4
       i32.store offset=4
       local.get $1
       local.get $11
       call $~lib/util/hash/HASH<~lib/string/String>
       local.get $6
       i32.and
       i32.const 2
       i32.shl
       local.get $5
       i32.add
       local.tee $11
       i32.load
       i32.store offset=8
       local.get $11
       local.get $1
       i32.store
       local.get $1
       i32.const 12
       i32.add
       local.set $1
      end
      local.get $2
      i32.const 12
      i32.add
      local.set $2
      br $while-continue|0
     end
    end
    local.get $10
    local.get $5
    i32.store
    local.get $5
    if
     local.get $10
     local.get $5
     i32.const 0
     call $byn-split-outlined-A$~lib/rt/itcms/__link
    end
    local.get $10
    local.get $6
    i32.store offset=4
    local.get $10
    local.get $0
    i32.store offset=8
    local.get $0
    if
     local.get $10
     local.get $0
     i32.const 0
     call $byn-split-outlined-A$~lib/rt/itcms/__link
    end
    local.get $10
    local.get $8
    i32.store offset=12
    local.get $10
    local.get $10
    i32.load offset=20
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.add
    global.set $~lib/memory/__stack_pointer
   end
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.load offset=8
   local.tee $0
   i32.store
   local.get $10
   local.get $10
   i32.load offset=16
   local.tee $1
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $1
   i32.const 12
   i32.mul
   local.get $0
   i32.add
   local.tee $0
   local.get $4
   i32.store
   local.get $4
   if
    local.get $10
    local.get $4
    i32.const 1
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   local.get $0
   local.get $3
   i32.store offset=4
   local.get $3
   if
    local.get $10
    local.get $3
    i32.const 1
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   local.get $10
   local.get $10
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $0
   local.get $10
   i32.load
   local.get $10
   i32.load offset=4
   local.get $7
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $1
   i32.load
   i32.store offset=8
   local.get $1
   local.get $0
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@zondax/assemblyscript-cbor/assembly/types/Handler#addValue (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  if (result i32)
   i32.const 1
  else
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load
   local.tee $3
   i32.store
   local.get $3
   i32.load offset=12
  end
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load
   local.tee $0
   i32.store
   local.get $0
   local.get $2
   call $~lib/array/Array<~lib/@zondax/assemblyscript-cbor/assembly/types/Value>#push
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $4
  i64.const 0
  i64.store
  local.get $4
  local.get $0
  i32.load
  local.tee $5
  i32.store
  local.get $4
  local.get $0
  i32.load
  local.tee $6
  i32.store offset=4
  local.get $6
  i32.load offset=12
  i32.const 1
  i32.sub
  local.set $6
  local.get $4
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $5
  i32.load offset=12
  local.get $6
  i32.le_u
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.load offset=4
  local.get $6
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $4
  i32.store
  local.get $4
  i32.eqz
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  local.get $4
  i32.store offset=4
  local.get $4
  if (result i32)
   block $__inlined_func$~lib/rt/__instanceof (result i32)
    local.get $4
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $3
    i32.const 3856
    i32.load
    i32.le_u
    if
     loop $do-loop|0
      i32.const 1
      local.get $3
      i32.const 19
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof
      drop
      local.get $3
      i32.const 3
      i32.shl
      i32.const 3860
      i32.add
      i32.load offset=4
      local.tee $3
      br_if $do-loop|0
     end
    end
    i32.const 0
   end
  else
   i32.const 0
  end
  if
   block $__inlined_func$~lib/rt/__instanceof0 (result i32)
    global.get $~lib/memory/__stack_pointer
    local.tee $3
    i32.const 8
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 4108
    i32.lt_s
    if
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $4
    i64.const 0
    i64.store
    local.get $4
    local.get $0
    i32.load
    local.tee $5
    i32.store
    local.get $4
    local.get $0
    i32.load
    local.tee $0
    i32.store offset=4
    local.get $0
    i32.load offset=12
    i32.const 1
    i32.sub
    local.set $0
    local.get $4
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 4108
    i32.lt_s
    if
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.store
    local.get $5
    i32.load offset=12
    local.get $0
    i32.le_u
    if
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.load offset=4
    local.get $0
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $4
    i32.store
    local.get $4
    i32.eqz
    if
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $3
    local.get $4
    i32.store offset=4
    local.get $4
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $0
    i32.const 3856
    i32.load
    i32.le_u
    if
     loop $do-loop|02
      i32.const 1
      local.get $0
      i32.const 19
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof0
      drop
      local.get $0
      i32.const 3
      i32.shl
      i32.const 3860
      i32.add
      i32.load offset=4
      local.tee $0
      br_if $do-loop|02
     end
    end
    i32.const 0
   end
   i32.eqz
   if
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   local.get $4
   local.get $1
   local.get $2
   call $~lib/@zondax/assemblyscript-cbor/assembly/types/Obj#set<~lib/@zondax/assemblyscript-cbor/assembly/types/Value>
  else
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4108
   i32.lt_s
   if
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store
   local.get $3
   local.get $0
   i32.load
   local.tee $4
   i32.store
   local.get $3
   local.get $0
   i32.load
   local.tee $5
   i32.store offset=4
   local.get $5
   i32.load offset=12
   i32.const 1
   i32.sub
   local.set $5
   local.get $3
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4108
   i32.lt_s
   if
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   local.get $4
   i32.load offset=12
   local.get $5
   i32.le_u
   if
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.load offset=4
   local.get $5
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.tee $3
   i32.store
   local.get $3
   i32.eqz
   if
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   local.get $3
   i32.store offset=4
   local.get $3
   if (result i32)
    block $__inlined_func$~lib/rt/__instanceof3 (result i32)
     local.get $3
     i32.const 20
     i32.sub
     i32.load offset=12
     local.tee $3
     i32.const 3856
     i32.load
     i32.le_u
     if
      loop $do-loop|05
       i32.const 1
       local.get $3
       i32.const 21
       i32.eq
       br_if $__inlined_func$~lib/rt/__instanceof3
       drop
       local.get $3
       i32.const 3
       i32.shl
       i32.const 3860
       i32.add
       i32.load offset=4
       local.tee $3
       br_if $do-loop|05
      end
     end
     i32.const 0
    end
   else
    i32.const 0
   end
   if
    block $__inlined_func$~lib/rt/__instanceof6 (result i32)
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     i32.const 8
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 4108
     i32.lt_s
     if
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     i64.const 0
     i64.store
     local.get $3
     local.get $0
     i32.load
     local.tee $4
     i32.store
     local.get $3
     local.get $0
     i32.load
     local.tee $0
     i32.store offset=4
     local.get $0
     i32.load offset=12
     i32.const 1
     i32.sub
     local.set $0
     local.get $3
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 4108
     i32.lt_s
     if
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.store
     local.get $4
     i32.load offset=12
     local.get $0
     i32.le_u
     if
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.load offset=4
     local.get $0
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.tee $0
     i32.store
     local.get $0
     i32.eqz
     if
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $1
     local.get $0
     i32.store offset=4
     local.get $0
     i32.const 20
     i32.sub
     i32.load offset=12
     local.tee $1
     i32.const 3856
     i32.load
     i32.le_u
     if
      loop $do-loop|08
       i32.const 1
       local.get $1
       i32.const 21
       i32.eq
       br_if $__inlined_func$~lib/rt/__instanceof6
       drop
       local.get $1
       i32.const 3
       i32.shl
       i32.const 3860
       i32.add
       i32.load offset=4
       local.tee $1
       br_if $do-loop|08
      end
     end
     i32.const 0
    end
    i32.eqz
    if
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $0
    i32.store
    local.get $1
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 4108
    i32.lt_s
    if
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    i32.const 0
    i32.store
    local.get $1
    local.get $0
    i32.load
    local.tee $0
    i32.store
    local.get $0
    local.get $2
    call $~lib/array/Array<~lib/@zondax/assemblyscript-cbor/assembly/types/Value>#push
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@zondax/assemblyscript-cbor/assembly/decoder/CBORDecoder#deserialize (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i64.const 0
  i64.store offset=8
  local.get $1
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.store
  local.get $0
  i32.load offset=8
  local.tee $3
  local.get $1
  i32.load offset=8
  i32.ge_u
  if
   unreachable
  end
  local.get $3
  local.get $1
  i32.load offset=4
  i32.add
  i32.load8_u
  local.set $1
  local.get $0
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.add
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  i32.const 31
  i32.and
  local.set $3
  block $folding-inner3
   block $folding-inner2
    block $folding-inner1
     local.get $1
     i32.const 5
     i32.shr_u
     local.tee $1
     i32.const 7
     i32.eq
     if
      block $break|0
       block $case2|0
        block $case1|0
         block $case0|0
          local.get $3
          i32.const 25
          i32.sub
          br_table $case0|0 $case1|0 $case2|0 $break|0
         end
         global.get $~lib/memory/__stack_pointer
         local.tee $1
         local.get $0
         i32.load offset=16
         local.tee $2
         i32.store
         local.get $1
         local.get $0
         i32.load offset=12
         local.tee $3
         i32.store offset=4
         local.get $2
         local.get $3
         block $__inlined_func$~lib/@zondax/assemblyscript-cbor/assembly/decoder/CBORDecoder#readFloat16 (result f32)
          local.get $1
          i32.const 8
          i32.sub
          global.set $~lib/memory/__stack_pointer
          global.get $~lib/memory/__stack_pointer
          i32.const 4108
          i32.lt_s
          if
           unreachable
          end
          global.get $~lib/memory/__stack_pointer
          local.tee $1
          i64.const 0
          i64.store
          local.get $1
          i32.const 4
          call $~lib/arraybuffer/ArrayBuffer#constructor
          local.tee $1
          i32.store
          i32.const 1
          global.set $~argumentsLength
          global.get $~lib/memory/__stack_pointer
          local.get $1
          call $~lib/dataview/DataView#constructor@varargs
          local.tee $1
          i32.store offset=4
          global.get $~lib/memory/__stack_pointer
          i32.const 4
          i32.sub
          global.set $~lib/memory/__stack_pointer
          global.get $~lib/memory/__stack_pointer
          i32.const 4108
          i32.lt_s
          if
           unreachable
          end
          global.get $~lib/memory/__stack_pointer
          local.tee $2
          i32.const 0
          i32.store
          local.get $2
          local.get $0
          i32.load offset=4
          local.tee $2
          i32.store
          local.get $0
          i32.load offset=8
          local.tee $3
          i32.const 31
          i32.shr_u
          local.get $2
          i32.load offset=8
          local.get $3
          i32.const 2
          i32.add
          i32.lt_s
          i32.or
          if
           unreachable
          end
          local.get $3
          local.get $2
          i32.load offset=4
          i32.add
          i32.load16_u
          local.set $2
          local.get $0
          local.get $0
          i32.load offset=8
          i32.const 2
          i32.add
          i32.store offset=8
          global.get $~lib/memory/__stack_pointer
          i32.const 4
          i32.add
          global.set $~lib/memory/__stack_pointer
          local.get $2
          i32.const 8
          i32.shl
          local.get $2
          i32.const 8
          i32.shr_u
          i32.or
          local.tee $2
          i32.const 32768
          i32.and
          local.set $3
          local.get $2
          i32.const 1023
          i32.and
          local.set $6
          local.get $2
          i32.const 31744
          i32.and
          local.tee $2
          i32.const 31744
          i32.eq
          if
           i32.const 261120
           local.set $2
          else
           local.get $2
           if
            local.get $2
            i32.const 114688
            i32.add
            local.set $2
           else
            local.get $6
            if
             global.get $~lib/memory/__stack_pointer
             i32.const 8
             i32.add
             global.set $~lib/memory/__stack_pointer
             f32.const -1
             f32.const 1
             local.get $3
             select
             local.get $6
             f32.convert_i32_u
             f32.mul
             f64.promote_f32
             f64.const 5.9604644775390625e-08
             f64.mul
             f32.demote_f64
             br $__inlined_func$~lib/@zondax/assemblyscript-cbor/assembly/decoder/CBORDecoder#readFloat16
            end
           end
          end
          local.get $1
          i32.load offset=8
          i32.const 4
          i32.lt_s
          if
           unreachable
          end
          local.get $1
          i32.load offset=4
          local.get $3
          local.get $2
          i32.const 13
          i32.shl
          i32.or
          local.get $6
          i32.const 13
          i32.shl
          i32.or
          i32.const 65535
          i32.and
          local.tee $2
          i32.const -16711936
          i32.and
          i32.const 8
          i32.rotl
          local.get $2
          i32.const 16711935
          i32.and
          i32.const 8
          i32.rotr
          i32.or
          i32.store
          local.get $1
          i32.load offset=8
          i32.const 4
          i32.lt_s
          if
           unreachable
          end
          local.get $1
          i32.load offset=4
          i32.load
          local.set $1
          global.get $~lib/memory/__stack_pointer
          i32.const 8
          i32.add
          global.set $~lib/memory/__stack_pointer
          local.get $1
          i32.const -16711936
          i32.and
          i32.const 8
          i32.rotl
          local.get $1
          i32.const 16711935
          i32.and
          i32.const 8
          i32.rotr
          i32.or
          f32.reinterpret_i32
         end
         f64.promote_f32
         call $~lib/@zondax/assemblyscript-cbor/assembly/types/Handler#setFloat
         br $folding-inner1
        end
        global.get $~lib/memory/__stack_pointer
        local.tee $1
        local.get $0
        i32.load offset=16
        local.tee $2
        i32.store
        local.get $1
        local.get $0
        i32.load offset=12
        local.tee $3
        i32.store offset=4
        local.get $1
        i32.const 4
        i32.sub
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        i32.const 4108
        i32.lt_s
        if
         unreachable
        end
        global.get $~lib/memory/__stack_pointer
        local.tee $1
        i32.const 0
        i32.store
        local.get $1
        local.get $0
        i32.load offset=4
        local.tee $1
        i32.store
        local.get $0
        i32.load offset=8
        local.tee $6
        i32.const 31
        i32.shr_u
        local.get $1
        i32.load offset=8
        local.get $6
        i32.const 4
        i32.add
        i32.lt_s
        i32.or
        if
         unreachable
        end
        local.get $6
        local.get $1
        i32.load offset=4
        i32.add
        i32.load
        local.set $1
        local.get $0
        local.get $0
        i32.load offset=8
        i32.const 4
        i32.add
        i32.store offset=8
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.add
        global.set $~lib/memory/__stack_pointer
        local.get $2
        local.get $3
        local.get $1
        i32.const -16711936
        i32.and
        i32.const 8
        i32.rotl
        local.get $1
        i32.const 16711935
        i32.and
        i32.const 8
        i32.rotr
        i32.or
        f32.reinterpret_i32
        f64.promote_f32
        call $~lib/@zondax/assemblyscript-cbor/assembly/types/Handler#setFloat
        br $folding-inner1
       end
       global.get $~lib/memory/__stack_pointer
       local.tee $1
       local.get $0
       i32.load offset=16
       local.tee $2
       i32.store
       local.get $1
       local.get $0
       i32.load offset=12
       local.tee $3
       i32.store offset=4
       local.get $1
       i32.const 4
       i32.sub
       global.set $~lib/memory/__stack_pointer
       global.get $~lib/memory/__stack_pointer
       i32.const 4108
       i32.lt_s
       if
        unreachable
       end
       global.get $~lib/memory/__stack_pointer
       local.tee $1
       i32.const 0
       i32.store
       local.get $1
       local.get $0
       i32.load offset=4
       local.tee $1
       i32.store
       local.get $0
       i32.load offset=8
       local.tee $6
       i32.const 31
       i32.shr_u
       local.get $1
       i32.load offset=8
       local.get $6
       i32.const 8
       i32.add
       i32.lt_s
       i32.or
       if
        unreachable
       end
       local.get $6
       local.get $1
       i32.load offset=4
       i32.add
       i64.load
       local.tee $4
       i64.const 8
       i64.shr_u
       i64.const 71777214294589695
       i64.and
       local.get $4
       i64.const 71777214294589695
       i64.and
       i64.const 8
       i64.shl
       i64.or
       local.set $4
       local.get $0
       local.get $0
       i32.load offset=8
       i32.const 8
       i32.add
       i32.store offset=8
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       local.get $2
       local.get $3
       local.get $4
       i64.const 16
       i64.shr_u
       i64.const 281470681808895
       i64.and
       local.get $4
       i64.const 281470681808895
       i64.and
       i64.const 16
       i64.shl
       i64.or
       i64.const 32
       i64.rotr
       f64.reinterpret_i64
       call $~lib/@zondax/assemblyscript-cbor/assembly/types/Handler#setFloat
       br $folding-inner1
      end
     end
     local.get $1
     i32.const 2
     i32.lt_u
     local.get $1
     i32.const 6
     i32.gt_u
     i32.or
     local.get $0
     local.get $3
     i64.extend_i32_u
     call $~lib/@zondax/assemblyscript-cbor/assembly/decoder/CBORDecoder#readLength
     local.tee $4
     i64.const 0
     i64.lt_s
     i32.and
     if
      unreachable
     end
     block $folding-inner0
      block $break|1
       block $case7|1
        block $case6|1
         block $case5|1
          block $case4|1
           block $case2|1
            block $case1|1
             block $case0|1
              local.get $1
              br_table $case0|1 $case1|1 $case2|1 $case2|1 $case4|1 $case5|1 $case6|1 $case7|1 $break|1
             end
             global.get $~lib/memory/__stack_pointer
             local.tee $1
             local.get $0
             i32.load offset=16
             local.tee $2
             i32.store
             local.get $1
             local.get $0
             i32.load offset=12
             local.tee $1
             i32.store offset=4
             local.get $2
             local.get $1
             local.get $4
             call $~lib/@zondax/assemblyscript-cbor/assembly/types/Handler#setInteger
             br $folding-inner1
            end
            global.get $~lib/memory/__stack_pointer
            local.tee $1
            local.get $0
            i32.load offset=16
            local.tee $2
            i32.store
            local.get $1
            local.get $0
            i32.load offset=12
            local.tee $1
            i32.store offset=4
            local.get $2
            local.get $1
            i64.const -1
            local.get $4
            i64.sub
            call $~lib/@zondax/assemblyscript-cbor/assembly/types/Handler#setInteger
            br $folding-inner1
           end
           global.get $~lib/memory/__stack_pointer
           i32.const 23
           i32.const 3584
           call $~lib/rt/__newArray
           local.tee $2
           i32.store offset=8
           local.get $4
           i64.const 0
           i64.lt_s
           if
            local.get $1
            i64.extend_i32_u
            local.set $5
            loop $while-continue|2
             i64.const -1
             local.set $4
             global.get $~lib/memory/__stack_pointer
             i32.const 4
             i32.sub
             global.set $~lib/memory/__stack_pointer
             global.get $~lib/memory/__stack_pointer
             i32.const 4108
             i32.lt_s
             if
              unreachable
             end
             global.get $~lib/memory/__stack_pointer
             local.tee $1
             i32.const 0
             i32.store
             local.get $1
             local.get $0
             i32.load offset=4
             local.tee $1
             i32.store
             local.get $0
             i32.load offset=8
             local.tee $3
             local.get $1
             i32.load offset=8
             i32.ge_u
             if
              unreachable
             end
             local.get $3
             local.get $1
             i32.load offset=4
             i32.add
             i32.load8_u
             local.set $1
             local.get $0
             local.get $0
             i32.load offset=8
             i32.const 1
             i32.add
             i32.store offset=8
             global.get $~lib/memory/__stack_pointer
             i32.const 4
             i32.add
             global.set $~lib/memory/__stack_pointer
             local.get $1
             i32.const 255
             i32.ne
             if
              local.get $5
              local.get $1
              i32.const 5
              i32.shr_u
              i64.extend_i32_u
              i64.ne
              local.get $0
              local.get $1
              i32.const 31
              i32.and
              i64.extend_i32_u
              call $~lib/@zondax/assemblyscript-cbor/assembly/decoder/CBORDecoder#readLength
              local.tee $4
              i64.const 0
              i64.lt_s
              i32.or
              if
               unreachable
              end
             end
             local.get $4
             i64.const 0
             i64.ge_s
             if
              local.get $0
              local.get $2
              local.get $4
              call $~lib/@zondax/assemblyscript-cbor/assembly/decoder/CBORDecoder#appendUtf16Data
              br $while-continue|2
             end
            end
           else
            local.get $0
            local.get $2
            local.get $4
            call $~lib/@zondax/assemblyscript-cbor/assembly/decoder/CBORDecoder#appendUtf16Data
           end
           global.get $~lib/memory/__stack_pointer
           local.get $0
           i32.load offset=16
           i32.load
           local.tee $1
           i32.store
           local.get $1
           i32.load offset=12
           i32.const 0
           i32.gt_s
           if
            global.get $~lib/memory/__stack_pointer
            local.tee $1
            local.get $0
            i32.load offset=16
            local.tee $3
            i32.store offset=4
            local.get $1
            i32.const 8
            i32.sub
            global.set $~lib/memory/__stack_pointer
            global.get $~lib/memory/__stack_pointer
            i32.const 4108
            i32.lt_s
            if
             unreachable
            end
            global.get $~lib/memory/__stack_pointer
            local.tee $1
            i64.const 0
            i64.store
            local.get $1
            local.get $3
            i32.load
            local.tee $6
            i32.store
            local.get $1
            local.get $3
            i32.load
            local.tee $3
            i32.store offset=4
            local.get $3
            i32.load offset=12
            i32.const 1
            i32.sub
            local.set $3
            local.get $1
            i32.const 4
            i32.sub
            global.set $~lib/memory/__stack_pointer
            global.get $~lib/memory/__stack_pointer
            i32.const 4108
            i32.lt_s
            if
             unreachable
            end
            global.get $~lib/memory/__stack_pointer
            i32.const 0
            i32.store
            local.get $6
            i32.load offset=12
            local.get $3
            i32.le_u
            if
             unreachable
            end
            global.get $~lib/memory/__stack_pointer
            local.get $6
            i32.load offset=4
            local.get $3
            i32.const 2
            i32.shl
            i32.add
            i32.load
            local.tee $1
            i32.store
            local.get $1
            i32.eqz
            if
             unreachable
            end
            global.get $~lib/memory/__stack_pointer
            i32.const 4
            i32.add
            global.set $~lib/memory/__stack_pointer
            global.get $~lib/memory/__stack_pointer
            i32.const 8
            i32.add
            global.set $~lib/memory/__stack_pointer
            global.get $~lib/memory/__stack_pointer
            local.get $1
            i32.store
            local.get $1
            if (result i32)
             block $__inlined_func$~lib/rt/__instanceof (result i32)
              local.get $1
              i32.const 20
              i32.sub
              i32.load offset=12
              local.tee $1
              i32.const 3856
              i32.load
              i32.le_u
              if
               loop $do-loop|0
                i32.const 1
                local.get $1
                i32.const 19
                i32.eq
                br_if $__inlined_func$~lib/rt/__instanceof
                drop
                local.get $1
                i32.const 3
                i32.shl
                i32.const 3860
                i32.add
                i32.load offset=4
                local.tee $1
                br_if $do-loop|0
               end
              end
              i32.const 0
             end
            else
             i32.const 0
            end
            if
             global.get $~lib/memory/__stack_pointer
             local.tee $1
             local.get $0
             i32.load offset=12
             local.tee $3
             i32.store
             local.get $1
             i32.const 1488
             i32.store offset=4
             local.get $3
             i32.const 1488
             call $~lib/string/String.__eq
             if
              local.get $0
              local.get $2
              call $~lib/string/String.fromCharCodes
              local.tee $1
              i32.store offset=12
             else
              global.get $~lib/memory/__stack_pointer
              local.tee $1
              local.get $0
              i32.load offset=16
              local.tee $3
              i32.store
              local.get $1
              local.get $0
              i32.load offset=12
              local.tee $1
              i32.store offset=4
              local.get $2
              call $~lib/string/String.fromCharCodes
              local.set $6
              global.get $~lib/memory/__stack_pointer
              local.get $6
              i32.store offset=12
              local.get $3
              local.get $1
              local.get $6
              call $~lib/@zondax/assemblyscript-cbor/assembly/types/Handler#setString
              i32.const 1488
              local.set $1
              local.get $0
              i32.const 1488
              i32.store offset=12
             end
             local.get $1
             if
              local.get $0
              local.get $1
              i32.const 0
              call $byn-split-outlined-A$~lib/rt/itcms/__link
             end
            end
            global.get $~lib/memory/__stack_pointer
            local.tee $1
            local.get $0
            i32.load offset=16
            local.tee $3
            i32.store offset=4
            local.get $1
            i32.const 8
            i32.sub
            global.set $~lib/memory/__stack_pointer
            global.get $~lib/memory/__stack_pointer
            i32.const 4108
            i32.lt_s
            if
             unreachable
            end
            global.get $~lib/memory/__stack_pointer
            local.tee $1
            i64.const 0
            i64.store
            local.get $1
            local.get $3
            i32.load
            local.tee $6
            i32.store
            local.get $1
            local.get $3
            i32.load
            local.tee $3
            i32.store offset=4
            local.get $3
            i32.load offset=12
            i32.const 1
            i32.sub
            local.set $3
            local.get $1
            i32.const 4
            i32.sub
            global.set $~lib/memory/__stack_pointer
            global.get $~lib/memory/__stack_pointer
            i32.const 4108
            i32.lt_s
            if
             unreachable
            end
            global.get $~lib/memory/__stack_pointer
            i32.const 0
            i32.store
            local.get $6
            i32.load offset=12
            local.get $3
            i32.le_u
            if
             unreachable
            end
            global.get $~lib/memory/__stack_pointer
            local.get $6
            i32.load offset=4
            local.get $3
            i32.const 2
            i32.shl
            i32.add
            i32.load
            local.tee $1
            i32.store
            local.get $1
            i32.eqz
            if
             unreachable
            end
            global.get $~lib/memory/__stack_pointer
            i32.const 4
            i32.add
            global.set $~lib/memory/__stack_pointer
            global.get $~lib/memory/__stack_pointer
            i32.const 8
            i32.add
            global.set $~lib/memory/__stack_pointer
            global.get $~lib/memory/__stack_pointer
            local.get $1
            i32.store
            local.get $1
            if (result i32)
             block $__inlined_func$~lib/rt/__instanceof2 (result i32)
              local.get $1
              i32.const 20
              i32.sub
              i32.load offset=12
              local.tee $1
              i32.const 3856
              i32.load
              i32.le_u
              if
               loop $do-loop|04
                i32.const 1
                local.get $1
                i32.const 21
                i32.eq
                br_if $__inlined_func$~lib/rt/__instanceof2
                drop
                local.get $1
                i32.const 3
                i32.shl
                i32.const 3860
                i32.add
                i32.load offset=4
                local.tee $1
                br_if $do-loop|04
               end
              end
              i32.const 0
             end
            else
             i32.const 0
            end
            if
             global.get $~lib/memory/__stack_pointer
             local.tee $1
             local.get $0
             i32.load offset=16
             local.tee $3
             i32.store
             local.get $1
             local.get $0
             i32.load offset=12
             local.tee $1
             i32.store offset=4
             local.get $2
             call $~lib/string/String.fromCharCodes
             local.set $2
             global.get $~lib/memory/__stack_pointer
             local.get $2
             i32.store offset=12
             local.get $3
             local.get $1
             local.get $2
             call $~lib/@zondax/assemblyscript-cbor/assembly/types/Handler#setString
             local.get $0
             i32.const 1488
             i32.store offset=12
             local.get $0
             i32.const 1488
             i32.const 0
             call $byn-split-outlined-A$~lib/rt/itcms/__link
            end
           else
            global.get $~lib/memory/__stack_pointer
            local.tee $1
            local.get $0
            i32.load offset=16
            local.tee $0
            i32.store
            local.get $1
            i32.const 1488
            i32.store offset=4
            local.get $2
            call $~lib/string/String.fromCharCodes
            local.set $1
            global.get $~lib/memory/__stack_pointer
            local.get $1
            i32.store offset=12
            local.get $0
            i32.const 1488
            local.get $1
            call $~lib/@zondax/assemblyscript-cbor/assembly/types/Handler#setString
           end
           br $folding-inner3
          end
          global.get $~lib/memory/__stack_pointer
          local.tee $1
          local.get $0
          i32.load offset=16
          local.tee $3
          i32.store
          local.get $1
          local.get $0
          i32.load offset=12
          local.tee $6
          i32.store offset=4
          local.get $1
          i32.const 8
          i32.sub
          global.set $~lib/memory/__stack_pointer
          global.get $~lib/memory/__stack_pointer
          i32.const 4108
          i32.lt_s
          if
           unreachable
          end
          global.get $~lib/memory/__stack_pointer
          local.tee $1
          i64.const 0
          i64.store
          local.get $1
          i32.const 4
          i32.sub
          global.set $~lib/memory/__stack_pointer
          global.get $~lib/memory/__stack_pointer
          i32.const 4108
          i32.lt_s
          if
           unreachable
          end
          global.get $~lib/memory/__stack_pointer
          local.tee $7
          i32.const 0
          i32.store
          local.get $7
          i32.const 4
          i32.const 21
          call $~lib/rt/itcms/__new
          local.tee $7
          i32.store
          local.get $7
          i32.const 0
          i32.store
          global.get $~lib/memory/__stack_pointer
          local.get $7
          call $~lib/@zondax/assemblyscript-cbor/assembly/types/Value#constructor
          local.tee $7
          i32.store
          local.get $7
          call $~lib/array/Array<~lib/@zondax/assemblyscript-cbor/assembly/types/Value>#constructor
          local.tee $8
          i32.store
          local.get $8
          if
           local.get $7
           local.get $8
           i32.const 0
           call $byn-split-outlined-A$~lib/rt/itcms/__link
          end
          global.get $~lib/memory/__stack_pointer
          i32.const 4
          i32.add
          global.set $~lib/memory/__stack_pointer
          local.get $1
          local.get $7
          i32.store
          global.get $~lib/memory/__stack_pointer
          local.get $3
          i32.load
          local.tee $1
          i32.store offset=4
          local.get $1
          i32.load offset=12
          if
           local.get $3
           local.get $6
           local.get $7
           call $~lib/@zondax/assemblyscript-cbor/assembly/types/Handler#addValue
          end
          global.get $~lib/memory/__stack_pointer
          local.get $3
          i32.load
          local.tee $1
          i32.store offset=4
          local.get $1
          local.get $7
          call $~lib/array/Array<~lib/@zondax/assemblyscript-cbor/assembly/types/Value>#push
          global.get $~lib/memory/__stack_pointer
          i32.const 8
          i32.add
          global.set $~lib/memory/__stack_pointer
          local.get $0
          i32.const 1488
          i32.store offset=12
          local.get $0
          i32.const 1488
          i32.const 0
          call $byn-split-outlined-A$~lib/rt/itcms/__link
          local.get $4
          i64.const 0
          i64.lt_s
          if
           loop $while-continue|3
            block $__inlined_func$~lib/@zondax/assemblyscript-cbor/assembly/decoder/CBORDecoder#readBreak (result i32)
             global.get $~lib/memory/__stack_pointer
             i32.const 4
             i32.sub
             global.set $~lib/memory/__stack_pointer
             global.get $~lib/memory/__stack_pointer
             i32.const 4108
             i32.lt_s
             if
              unreachable
             end
             global.get $~lib/memory/__stack_pointer
             local.tee $1
             i32.const 0
             i32.store
             local.get $1
             local.get $0
             i32.load offset=4
             local.tee $1
             i32.store
             local.get $0
             i32.load offset=8
             local.tee $2
             local.get $1
             i32.load offset=8
             i32.ge_u
             if
              unreachable
             end
             local.get $2
             local.get $1
             i32.load offset=4
             i32.add
             i32.load8_u
             i32.const 255
             i32.ne
             if
              global.get $~lib/memory/__stack_pointer
              i32.const 4
              i32.add
              global.set $~lib/memory/__stack_pointer
              i32.const 0
              br $__inlined_func$~lib/@zondax/assemblyscript-cbor/assembly/decoder/CBORDecoder#readBreak
             end
             local.get $0
             local.get $0
             i32.load offset=8
             i32.const 1
             i32.add
             i32.store offset=8
             global.get $~lib/memory/__stack_pointer
             i32.const 4
             i32.add
             global.set $~lib/memory/__stack_pointer
             i32.const 1
            end
            i32.eqz
            if
             local.get $0
             call $~lib/@zondax/assemblyscript-cbor/assembly/decoder/CBORDecoder#deserialize
             br $while-continue|3
            end
           end
          else
           loop $for-loop|4
            local.get $4
            local.get $2
            i64.extend_i32_s
            i64.gt_s
            if
             local.get $0
             call $~lib/@zondax/assemblyscript-cbor/assembly/decoder/CBORDecoder#deserialize
             local.get $2
             i32.const 1
             i32.add
             local.set $2
             br $for-loop|4
            end
           end
          end
          br $folding-inner2
         end
         global.get $~lib/memory/__stack_pointer
         local.tee $1
         local.get $0
         i32.load offset=16
         local.tee $3
         i32.store
         local.get $1
         local.get $0
         i32.load offset=12
         local.tee $6
         i32.store offset=4
         local.get $1
         i32.const 8
         i32.sub
         global.set $~lib/memory/__stack_pointer
         global.get $~lib/memory/__stack_pointer
         i32.const 4108
         i32.lt_s
         if
          unreachable
         end
         global.get $~lib/memory/__stack_pointer
         local.tee $1
         i64.const 0
         i64.store
         local.get $1
         i32.const 4
         i32.sub
         global.set $~lib/memory/__stack_pointer
         global.get $~lib/memory/__stack_pointer
         i32.const 4108
         i32.lt_s
         if
          unreachable
         end
         global.get $~lib/memory/__stack_pointer
         local.tee $7
         i32.const 0
         i32.store
         local.get $7
         i32.const 4
         i32.const 19
         call $~lib/rt/itcms/__new
         local.tee $7
         i32.store
         local.get $7
         i32.const 0
         i32.store
         global.get $~lib/memory/__stack_pointer
         local.get $7
         call $~lib/@zondax/assemblyscript-cbor/assembly/types/Value#constructor
         local.tee $7
         i32.store
         global.get $~lib/memory/__stack_pointer
         i32.const 4
         i32.sub
         global.set $~lib/memory/__stack_pointer
         global.get $~lib/memory/__stack_pointer
         i32.const 4108
         i32.lt_s
         if
          unreachable
         end
         global.get $~lib/memory/__stack_pointer
         local.tee $8
         i32.const 0
         i32.store
         local.get $8
         i32.const 24
         i32.const 20
         call $~lib/rt/itcms/__new
         local.tee $8
         i32.store
         local.get $8
         i32.const 16
         call $~lib/arraybuffer/ArrayBuffer#constructor
         local.tee $9
         i32.store
         local.get $9
         if
          local.get $8
          local.get $9
          i32.const 0
          call $byn-split-outlined-A$~lib/rt/itcms/__link
         end
         local.get $8
         i32.const 3
         i32.store offset=4
         local.get $8
         i32.const 48
         call $~lib/arraybuffer/ArrayBuffer#constructor
         local.tee $9
         i32.store offset=8
         local.get $9
         if
          local.get $8
          local.get $9
          i32.const 0
          call $byn-split-outlined-A$~lib/rt/itcms/__link
         end
         local.get $8
         i32.const 4
         i32.store offset=12
         local.get $8
         i32.const 0
         i32.store offset=16
         local.get $8
         i32.const 0
         i32.store offset=20
         global.get $~lib/memory/__stack_pointer
         i32.const 4
         i32.add
         global.set $~lib/memory/__stack_pointer
         local.get $7
         local.get $8
         i32.store
         local.get $8
         if
          local.get $7
          local.get $8
          i32.const 0
          call $byn-split-outlined-A$~lib/rt/itcms/__link
         end
         global.get $~lib/memory/__stack_pointer
         i32.const 4
         i32.add
         global.set $~lib/memory/__stack_pointer
         local.get $1
         local.get $7
         i32.store
         local.get $3
         local.get $6
         local.get $7
         call $~lib/@zondax/assemblyscript-cbor/assembly/types/Handler#addValue
         global.get $~lib/memory/__stack_pointer
         local.get $3
         i32.load
         local.tee $1
         i32.store offset=4
         local.get $1
         local.get $7
         call $~lib/array/Array<~lib/@zondax/assemblyscript-cbor/assembly/types/Value>#push
         global.get $~lib/memory/__stack_pointer
         i32.const 8
         i32.add
         global.set $~lib/memory/__stack_pointer
         local.get $0
         i32.const 1488
         i32.store offset=12
         local.get $0
         i32.const 1488
         i32.const 0
         call $byn-split-outlined-A$~lib/rt/itcms/__link
         loop $for-loop|5
          local.get $4
          local.get $2
          i64.extend_i32_s
          i64.gt_s
          if (result i32)
           i32.const 0
          else
           local.get $4
           i64.const 0
           i64.lt_s
           if (result i32)
            block $__inlined_func$~lib/@zondax/assemblyscript-cbor/assembly/decoder/CBORDecoder#readBreak6 (result i32)
             global.get $~lib/memory/__stack_pointer
             i32.const 4
             i32.sub
             global.set $~lib/memory/__stack_pointer
             global.get $~lib/memory/__stack_pointer
             i32.const 4108
             i32.lt_s
             if
              unreachable
             end
             global.get $~lib/memory/__stack_pointer
             local.tee $1
             i32.const 0
             i32.store
             local.get $1
             local.get $0
             i32.load offset=4
             local.tee $1
             i32.store
             local.get $0
             i32.load offset=8
             local.tee $3
             local.get $1
             i32.load offset=8
             i32.ge_u
             if
              unreachable
             end
             local.get $3
             local.get $1
             i32.load offset=4
             i32.add
             i32.load8_u
             i32.const 255
             i32.ne
             if
              global.get $~lib/memory/__stack_pointer
              i32.const 4
              i32.add
              global.set $~lib/memory/__stack_pointer
              i32.const 0
              br $__inlined_func$~lib/@zondax/assemblyscript-cbor/assembly/decoder/CBORDecoder#readBreak6
             end
             local.get $0
             local.get $0
             i32.load offset=8
             i32.const 1
             i32.add
             i32.store offset=8
             global.get $~lib/memory/__stack_pointer
             i32.const 4
             i32.add
             global.set $~lib/memory/__stack_pointer
             i32.const 1
            end
           else
            i32.const 1
           end
          end
          i32.eqz
          if
           local.get $0
           call $~lib/@zondax/assemblyscript-cbor/assembly/decoder/CBORDecoder#deserialize
           local.get $0
           call $~lib/@zondax/assemblyscript-cbor/assembly/decoder/CBORDecoder#deserialize
           local.get $2
           i32.const 1
           i32.add
           local.set $2
           br $for-loop|5
          end
         end
         br $folding-inner2
        end
        unreachable
       end
       block $case4|6
        block $case3|6
         block $case2|6
          block $case1|6
           block $case0|6
            local.get $4
            i32.wrap_i64
            i32.const 20
            i32.sub
            br_table $case0|6 $case1|6 $case2|6 $case3|6 $case4|6
           end
           global.get $~lib/memory/__stack_pointer
           local.tee $1
           local.get $0
           i32.load offset=16
           local.tee $2
           i32.store
           local.get $1
           local.get $0
           i32.load offset=12
           local.tee $1
           i32.store offset=4
           local.get $2
           local.get $1
           i32.const 0
           call $~lib/@zondax/assemblyscript-cbor/assembly/types/Handler#setBoolean
           br $folding-inner1
          end
          global.get $~lib/memory/__stack_pointer
          local.tee $1
          local.get $0
          i32.load offset=16
          local.tee $2
          i32.store
          local.get $1
          local.get $0
          i32.load offset=12
          local.tee $1
          i32.store offset=4
          local.get $2
          local.get $1
          i32.const 1
          call $~lib/@zondax/assemblyscript-cbor/assembly/types/Handler#setBoolean
          br $folding-inner1
         end
         global.get $~lib/memory/__stack_pointer
         local.tee $1
         local.get $0
         i32.load offset=16
         local.tee $2
         i32.store
         local.get $1
         local.get $0
         i32.load offset=12
         local.tee $3
         i32.store offset=4
         local.get $1
         i32.const 4
         i32.sub
         global.set $~lib/memory/__stack_pointer
         global.get $~lib/memory/__stack_pointer
         i32.const 4108
         i32.lt_s
         if
          unreachable
         end
         global.get $~lib/memory/__stack_pointer
         local.tee $1
         i32.const 0
         i32.store
         local.get $1
         global.get $~lib/@zondax/assemblyscript-cbor/assembly/types/NULL
         local.tee $1
         i32.store
         br $folding-inner0
        end
        global.get $~lib/memory/__stack_pointer
        local.tee $1
        local.get $0
        i32.load offset=16
        local.tee $2
        i32.store
        local.get $1
        local.get $0
        i32.load offset=12
        local.tee $3
        i32.store offset=4
        local.get $1
        i32.const 4
        i32.sub
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        i32.const 4108
        i32.lt_s
        if
         unreachable
        end
        global.get $~lib/memory/__stack_pointer
        local.tee $1
        i32.const 0
        i32.store
        local.get $1
        global.get $~lib/@zondax/assemblyscript-cbor/assembly/types/UNDEFINED
        local.tee $1
        i32.store
        br $folding-inner0
       end
       unreachable
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 16
      i32.add
      global.set $~lib/memory/__stack_pointer
      return
     end
     local.get $2
     local.get $3
     local.get $1
     call $~lib/@zondax/assemblyscript-cbor/assembly/types/Handler#addValue
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
    end
    local.get $0
    i32.const 1488
    i32.store offset=12
    local.get $0
    i32.const 1488
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
    br $folding-inner3
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.load offset=16
   local.tee $0
   i32.store
   local.get $1
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4108
   i32.lt_s
   if
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store
   local.get $1
   local.get $0
   i32.load
   local.tee $1
   i32.store
   local.get $1
   i32.load offset=12
   i32.const 1
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $0
    i32.load
    local.tee $0
    i32.store
    local.get $1
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 4108
    i32.lt_s
    if
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.store
    local.get $0
    i32.load offset=12
    local.tee $1
    i32.const 0
    i32.le_s
    if
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.load offset=4
    local.get $1
    i32.const 1
    i32.sub
    local.tee $1
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.store
    local.get $0
    local.get $1
    i32.store offset=12
    local.get $2
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@zondax/assemblyscript-cbor/assembly/encoder/CBOREncoder#prepareWrite (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store
  local.get $2
  i32.const 0
  i32.store offset=8
  local.get $2
  local.get $0
  i32.load
  local.tee $2
  i32.store
  local.get $2
  i32.const 20
  i32.sub
  i32.load offset=16
  local.set $2
  local.get $1
  local.get $0
  i32.load offset=8
  i32.add
  local.set $3
  loop $while-continue|0
   local.get $2
   local.get $3
   i32.lt_u
   if
    local.get $2
    i32.const 1
    i32.shl
    local.set $2
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $3
  i32.store
  local.get $3
  i32.const 20
  i32.sub
  i32.load offset=16
  local.get $2
  i32.ne
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $3
   i32.store offset=4
   local.get $0
   local.get $2
   call $~lib/arraybuffer/ArrayBuffer#constructor
   local.tee $2
   i32.store
   local.get $2
   if
    local.get $0
    local.get $2
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load
   local.tee $2
   i32.store offset=8
   i32.const 1
   global.set $~argumentsLength
   local.get $0
   local.get $2
   call $~lib/dataview/DataView#constructor@varargs
   local.tee $2
   i32.store offset=4
   local.get $2
   if
    local.get $0
    local.get $2
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   local.get $0
   i32.load offset=8
   i32.const 3
   i32.add
   i32.const 2
   i32.shr_u
   local.set $4
   i32.const 0
   local.set $2
   loop $for-loop|1
    local.get $2
    local.get $4
    i32.lt_u
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=4
     local.tee $5
     i32.store
     local.get $2
     i32.const 2
     i32.shl
     local.tee $6
     i32.const 31
     i32.shr_u
     local.get $3
     i32.load offset=8
     local.get $6
     i32.const 4
     i32.add
     i32.lt_s
     i32.or
     if
      unreachable
     end
     local.get $6
     local.get $3
     i32.load offset=4
     i32.add
     i32.load
     local.tee $7
     i32.const -16711936
     i32.and
     i32.const 8
     i32.rotl
     local.get $7
     i32.const 16711935
     i32.and
     i32.const 8
     i32.rotr
     i32.or
     local.set $7
     local.get $6
     i32.const 31
     i32.shr_u
     local.get $5
     i32.load offset=8
     local.get $6
     i32.const 4
     i32.add
     i32.lt_s
     i32.or
     if
      unreachable
     end
     local.get $6
     local.get $5
     i32.load offset=4
     i32.add
     local.get $7
     i32.const -16711936
     i32.and
     i32.const 8
     i32.rotl
     local.get $7
     i32.const 16711935
     i32.and
     i32.const 8
     i32.rotr
     i32.or
     i32.store
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|1
    end
   end
  end
  local.get $0
  local.get $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@zondax/assemblyscript-cbor/assembly/encoder/CBOREncoder#writeUint8 (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.const 1
  call $~lib/@zondax/assemblyscript-cbor/assembly/encoder/CBOREncoder#prepareWrite
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.store
  local.get $0
  i32.load offset=8
  local.tee $3
  local.get $2
  i32.load offset=8
  i32.ge_u
  if
   unreachable
  end
  local.get $3
  local.get $2
  i32.load offset=4
  i32.add
  local.get $1
  i32.store8
  local.get $0
  local.get $0
  i32.load offset=8
  local.get $0
  i32.load offset=12
  i32.add
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@zondax/fvm-as-sdk/assembly/wrappers/vm/context (result i32)
  (local $0 i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 1024
  call $~lib/@zondax/fvm-as-sdk/assembly/env/sys/vm/vm.context
  drop
  i32.const 1024
  i64.load
  drop
  i32.const 1032
  i64.load
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 1040
  i64.load
  local.set $1
  i32.const 1048
  i64.load
  local.set $2
  i32.const 1056
  i64.load
  local.set $3
  i32.const 1064
  i64.load
  local.set $4
  i32.const 1072
  i32.load
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $6
  i32.const 0
  i32.store
  local.get $6
  i32.const 36
  i32.const 3
  call $~lib/rt/itcms/__new
  local.tee $6
  i32.store
  local.get $6
  local.get $1
  i64.store
  local.get $6
  local.get $2
  i64.store offset=8
  local.get $6
  local.get $3
  i64.store offset=16
  local.get $6
  local.get $4
  i64.store offset=24
  local.get $6
  local.get $5
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/@zondax/fvm-as-sdk/assembly/wrappers/errors/genericAbort (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $5
  i32.const 0
  i32.store
  i32.const 1
  global.set $~argumentsLength
  local.get $5
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  local.tee $2
  local.get $2
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.add
  local.set $4
  loop $while-continue|0
   local.get $2
   local.get $4
   i32.lt_u
   if
    local.get $2
    i32.load16_u
    local.tee $6
    i32.const 128
    i32.lt_u
    if (result i32)
     local.get $3
     i32.const 1
     i32.add
    else
     local.get $6
     i32.const 2048
     i32.lt_u
     if (result i32)
      local.get $3
      i32.const 2
      i32.add
     else
      local.get $6
      i32.const 64512
      i32.and
      i32.const 55296
      i32.eq
      local.get $4
      local.get $2
      i32.const 2
      i32.add
      i32.gt_u
      i32.and
      if
       local.get $2
       i32.load16_u offset=2
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
       if
        local.get $3
        i32.const 4
        i32.add
        local.set $3
        local.get $2
        i32.const 4
        i32.add
        local.set $2
        br $while-continue|0
       end
      end
      local.get $3
      i32.const 3
      i32.add
     end
    end
    local.set $3
    local.get $2
    i32.const 2
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.const 0
  call $~lib/rt/itcms/__new
  local.tee $4
  i32.store
  local.get $1
  local.tee $3
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.shl
  local.get $3
  i32.add
  local.set $7
  local.get $4
  local.set $2
  loop $while-continue|00
   local.get $3
   local.get $7
   i32.lt_u
   if
    local.get $3
    i32.load16_u
    local.tee $6
    i32.const 128
    i32.lt_u
    if (result i32)
     local.get $2
     local.get $6
     i32.store8
     local.get $2
     i32.const 1
     i32.add
    else
     local.get $6
     i32.const 2048
     i32.lt_u
     if (result i32)
      local.get $2
      local.get $6
      i32.const 6
      i32.shr_u
      i32.const 192
      i32.or
      local.get $6
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.const 8
      i32.shl
      i32.or
      i32.store16
      local.get $2
      i32.const 2
      i32.add
     else
      local.get $6
      i32.const 56320
      i32.lt_u
      local.get $7
      local.get $3
      i32.const 2
      i32.add
      i32.gt_u
      i32.and
      local.get $6
      i32.const 63488
      i32.and
      i32.const 55296
      i32.eq
      i32.and
      if
       local.get $3
       i32.load16_u offset=2
       local.tee $8
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
       if
        local.get $2
        local.get $6
        i32.const 1023
        i32.and
        i32.const 10
        i32.shl
        i32.const 65536
        i32.add
        local.get $8
        i32.const 1023
        i32.and
        i32.or
        local.tee $6
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 24
        i32.shl
        local.get $6
        i32.const 6
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 16
        i32.shl
        i32.or
        local.get $6
        i32.const 12
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 8
        i32.shl
        i32.or
        local.get $6
        i32.const 18
        i32.shr_u
        i32.const 240
        i32.or
        i32.or
        i32.store
        local.get $2
        i32.const 4
        i32.add
        local.set $2
        local.get $3
        i32.const 4
        i32.add
        local.set $3
        br $while-continue|00
       end
      end
      local.get $2
      local.get $6
      i32.const 12
      i32.shr_u
      i32.const 224
      i32.or
      local.get $6
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.const 8
      i32.shl
      i32.or
      i32.store16
      local.get $2
      local.get $6
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=2
      local.get $2
      i32.const 3
      i32.add
     end
    end
    local.set $2
    local.get $3
    i32.const 2
    i32.add
    local.set $3
    br $while-continue|00
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  local.get $4
  i32.store
  local.get $0
  local.get $4
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  call $~lib/@zondax/fvm-as-sdk/assembly/env/sys/vm/vm.abort
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/map/Map<~lib/string/String,~lib/array/Array<u8>>#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 24
  i32.const 5
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  local.get $0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $1
  i32.store
  local.get $1
  if
   local.get $0
   local.get $1
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  local.get $0
  i32.const 3
  i32.store offset=4
  local.get $0
  i32.const 48
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $1
  i32.store offset=8
  local.get $1
  if
   local.get $0
   local.get $1
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  local.get $0
  i32.const 4
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/state/State#constructor (param $0 i64) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store
  local.get $2
  i32.const 12
  i32.const 6
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  local.get $2
  i64.const 0
  i64.store
  local.get $2
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $2
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 7
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  local.get $2
  i32.store
  local.get $2
  local.get $0
  i64.store
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $1
  if
   local.get $2
   local.get $1
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/typedarray/Uint8Array#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 12
  i32.const 9
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $1
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store
  end
  local.get $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store offset=4
  local.get $1
  local.get $2
  i32.store
  local.get $2
  if
   local.get $1
   local.get $2
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  local.get $1
  local.get $2
  i32.store offset=4
  local.get $1
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/@zondax/fvm-as-sdk/assembly/env/types/Cid#constructor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store
  local.get $3
  i32.const 12
  i32.const 8
  call $~lib/rt/itcms/__new
  local.tee $3
  i32.store
  local.get $3
  local.get $0
  i32.store
  local.get $0
  if
   local.get $3
   local.get $0
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  local.get $3
  local.get $1
  i32.store offset=4
  local.get $1
  if
   local.get $3
   local.get $1
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  local.get $3
  local.get $2
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/@zondax/fvm-as-sdk/assembly/env/types/IpldOpen#constructor (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store
  local.get $3
  i32.const 20
  i32.const 10
  call $~lib/rt/itcms/__new
  local.tee $3
  i32.store
  local.get $3
  local.get $0
  i32.store
  local.get $3
  local.get $1
  i64.store offset=8
  local.get $3
  local.get $2
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/array/Array<~lib/@zondax/assemblyscript-cbor/assembly/types/Value>#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i64.const 0
  i64.store
  local.get $0
  i32.const 16
  i32.const 16
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.const 0
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store
  local.get $1
  if
   local.get $0
   local.get $1
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  i32.const 32
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@zondax/assemblyscript-cbor/assembly/types/Value#constructor (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 15
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $1
  if
   local.get $2
   local.get $1
   i32.const 0
   call $~lib/memory/memory.copy
  end
  local.get $3
  local.get $2
  i32.store
  i32.const 16
  local.get $0
  call $~lib/rt/itcms/__new
  local.tee $0
  local.get $2
  i32.store
  local.get $2
  if
   local.get $0
   local.get $2
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  local.get $0
  local.get $2
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/string/String.fromCharCodes (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4108
  i32.lt_s
  if
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  local.tee $1
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $3
  i32.store
  local.get $0
  i32.load offset=4
  local.set $2
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $0
    i32.const 1
    i32.shl
    local.get $3
    i32.add
    local.get $0
    i32.const 2
    i32.shl
    local.get $2
    i32.add
    i32.load
    i32.store16
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $byn-split-outlined-A$~lib/rt/itcms/__visit (param $0 i32)
  global.get $~lib/rt/itcms/white
  local.get $0
  i32.const 20
  i32.sub
  local.tee $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $byn-split-outlined-A$~lib/rt/itcms/__link (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   unreachable
  end
  global.get $~lib/rt/itcms/white
  local.get $1
  i32.const 20
  i32.sub
  local.tee $1
  i32.load offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   i32.const 20
   i32.sub
   local.tee $0
   i32.load offset=4
   i32.const 3
   i32.and
   local.tee $3
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $0
    local.get $1
    local.get $2
    select
    call $~lib/rt/itcms/Object#makeGray
   else
    global.get $~lib/rt/itcms/state
    i32.const 1
    i32.eq
    local.get $3
    i32.const 3
    i32.eq
    i32.and
    if
     local.get $1
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
 (func $byn-split-outlined-A$~lib/rt/itcms/__link_0 (param $0 i32) (param $1 i32)
  local.get $0
  i32.eqz
  if
   unreachable
  end
  global.get $~lib/rt/itcms/white
  local.get $1
  i32.const 20
  i32.sub
  local.tee $1
  i32.load offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=4
   i32.const 3
   i32.and
   local.tee $0
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $1
    call $~lib/rt/itcms/Object#makeGray
   else
    global.get $~lib/rt/itcms/state
    i32.const 1
    i32.eq
    local.get $0
    i32.const 3
    i32.eq
    i32.and
    if
     local.get $1
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
)
