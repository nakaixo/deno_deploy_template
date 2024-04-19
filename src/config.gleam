import nakai/attr
import nakai/html

pub const header_style = "
  font-family: 'Outfit', serif;
"

fn meta(name name: String, content content: String) -> html.Node {
  html.meta([attr.name(name), attr.content(content)])
}

pub fn metadata() {
  html.Head([
    html.title("Deno Deploy Example ✨"),
    meta(name: "viewport", content: "width=device-width, initial-scale=1"),
    meta(name: "og:title", content: "Deno Deploy Example ✨"),
    meta(
      name: "og:description",
      content: "Template for deploying a Nakai app on Deno Deploy",
    ),
    meta(name: "og:type", content: "website"),
    meta(name: "og:url", content: "https://nakai-template.deno.dev"),
    meta(
      name: "og:image",
      content: "https://cdn.mckayla.cloud/-/f648cf5b6eee40b2982410757909716e/Nakai-Banner@2x.webp",
    ),
    meta(
      name: "og:image:secure_url",
      content: "https://cdn.mckayla.cloud/-/f648cf5b6eee40b2982410757909716e/Nakai-Banner@2x.webp",
    ),
    html.link([
      attr.rel("shortcut icon"),
      attr.href(
        "https://cdn.mckayla.cloud/-/f648cf5b6eee40b2982410757909716e/favicon.ico",
      ),
    ]),
    html.link([
      attr.rel("preconnect"),
      attr.href("https://fonts.googleapis.com"),
    ]),
    html.link([
      attr.rel("preconnect"),
      attr.href("https://fonts.gstatic.com"),
      attr.crossorigin(),
    ]),
    html.link([
      attr.rel("stylesheet"),
      attr.href("https://fonts.googleapis.com/css2?family=Outfit&display=swap"),
    ]),
  ])
}
