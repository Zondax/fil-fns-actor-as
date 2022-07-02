// Next.js API route support: https://nextjs.org/docs/api-routes/introduction
import nc from "next-connect";
import cors from "cors";

import * as cbor from "@ipld/dag-cbor";

// @ts-ignore
import { register, transfer } from "../../lib/index";

export interface Body {
  id: string;
  address: string;
  key: string;
  domain: string;
  destination: string;
}

const handler = nc()
  // use connect based middleware
  .use(cors())
  .post<{ body: Body }>(async (req, res) => {
    try {
      const { id, address, key, domain, destination } = req.body;

      const params = cbor.encode([
        domain,
        Uint8Array.from(Buffer.from(destination, "hex")),
      ]);
      const sentTx = await transfer(id, address, key, params);

      if (sentTx.result.Receipt.ExitCode == 0) {
        res.statusCode = 200;
        res.end(JSON.stringify({}));
      }
    } catch (err) {
      res.statusCode = 400;
      res.end(JSON.stringify({ errorMessage: err.toString() }));
    }
  });

export default handler;
