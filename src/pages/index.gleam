import config
import nakai/html
import nakai/html/attrs

pub fn page() {
  config.with_metadata(html.h1_text(
    [attrs.style(config.header_style)],
    "Hello from Gleam!",
  ))
}
