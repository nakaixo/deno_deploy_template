import gleam/result
import gleam/uri
import nakai
import pages/index
import pages/not_found

pub fn router(request_url: String) {
  let path =
    uri.parse(request_url)
    |> result.map(fn(uri) { uri.path })

  let page = case path {
    Ok("/") -> index.page()
    _ -> not_found.page()
  }

  page
  |> nakai.to_string()
}
