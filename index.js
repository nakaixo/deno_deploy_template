import { serve } from "std/http/server.ts";
import { main } from "./build/dev/javascript/deno_deploy_template/deno_deploy_template.mjs";

function app() {
	return new Response(main(), {
		headers: { "content-type": "text/html; charset=utf-8" },
	});
}

console.log("Listening on http://localhost:8000");
await serve(app);
