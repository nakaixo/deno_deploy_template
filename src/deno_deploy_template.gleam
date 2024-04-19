import gleam/http/request.{type Request}
import gleam/http/response.{type Response}
import gleam/javascript/promise.{type Promise}
import nakai
import pages/index
import pages/not_found
import stego.{type Body}

pub fn main() {
  stego.serve(router)
}

pub fn router(req: Request(Body)) -> Promise(Response(String)) {
  let #(status, page) = case req.path {
    "/" -> #(200, index.page())
    _ -> #(404, not_found.page())
  }

  let body = nakai.to_string(page)

  response.new(status)
  |> response.set_header("content-type", "text/html; charset=utf-8")
  |> response.set_body(body)
  |> promise.resolve()
}
