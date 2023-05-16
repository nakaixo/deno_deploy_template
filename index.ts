import { serve } from "std/http/server.ts";
import { router } from "./build/dev/javascript/deno_deploy_template/router.mjs";

function app(request: Request) {
	return new Response(router(request.url), {
		headers: { "content-type": "text/html; charset=utf-8" },
	});
}

await serve(app);
