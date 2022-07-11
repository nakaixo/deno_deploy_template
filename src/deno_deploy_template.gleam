import gleam/html
import nakai
import template/app

pub fn main() {
  app.home()
  |> nakai.html
  |> nakai.render_doc(doctype: html.doctype("html"))
}
