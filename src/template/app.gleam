import gleam/html
import gleam/html/attrs

pub fn home() {
  html.html(
    [],
    [
      html.head(
        [],
        [
          html.title("Nakai Deno Deploy Example ✨"),
          html.Element(
            "meta",
            [
              attrs.Attr("name", "viewport"),
              attrs.Attr("content", "width=device-width, initial-scale=1"),
            ],
            [],
          ),
          html.Element(
            "meta",
            [
              attrs.Attr("property", "og:title"),
              attrs.Attr("content", "Nakai Deno Deploy Example ✨"),
            ],
            [],
          ),
          html.Element(
            "meta",
            [
              attrs.Attr("property", "og:description"),
              attrs.Attr(
                "content",
                "Template for deploying a Nakai app on Deno Deploy",
              ),
            ],
            [],
          ),
          html.Element(
            "meta",
            [
              attrs.Attr("property", "og:type"),
              attrs.Attr("content", "website"),
            ],
            [],
          ),
          html.Element(
            "meta",
            [
              attrs.Attr("property", "og:url"),
              attrs.Attr("content", "https://nakai-template.deno.dev"),
            ],
            [],
          ),
          html.Element(
            "meta",
            [
              attrs.Attr("property", "og:image"),
              attrs.Attr(
                "content",
                "https://cdn.mckayla.cloud/-/f648cf5b6eee40b2982410757909716e/Nakai-Banner@2x.webp",
              ),
            ],
            [],
          ),
          html.Element(
            "meta",
            [
              attrs.Attr("property", "og:image:secure_url"),
              attrs.Attr(
                "content",
                "https://cdn.mckayla.cloud/-/f648cf5b6eee40b2982410757909716e/Nakai-Banner@2x.webp",
              ),
            ],
            [],
          ),
          html.link([
            attrs.rel("shortcut icon"),
            attrs.href(
              "https://cdn.mckayla.cloud/-/f648cf5b6eee40b2982410757909716e/favicon.ico",
            ),
          ]),
          html.link([attrs.rel("stylesheet"), attrs.href("/style.css")]),
          html.link([
            attrs.rel("preconnect"),
            attrs.href("https://fonts.googleapis.com"),
          ]),
          html.link([
            attrs.rel("preconnect"),
            attrs.href("https://fonts.gstatic.com"),
            attrs.Attr("crossorigin", "true"),
          ]),
          html.link([
            attrs.rel("stylesheet"),
            attrs.href(
              "https://fonts.googleapis.com/css2?family=Neuton&family=Nunito&display=swap",
            ),
          ]),
        ],
      ),
      html.body(
        [
          attrs.Attr(
            "style",
            "
            background-image:
              linear-gradient(0deg, rgb(255 255 255 / 0), rgb(255 255 255 / 1));
            background-position: center;
            background-size: cover;
            font-family: 'Nunito', sans-serif;
            margin: 0;
            ",
          ),
        ],
        [
          html.img([
            attrs.Attr(
              "style",
              "
              position: relative;
              z-index: -2;
              width: 100vw;
              height: 50vh;
              object-fit: cover;
              ",
            ),
            attrs.src(
              "https://cdn.mckayla.cloud/-/f648cf5b6eee40b2982410757909716e/Nakai-Background.svg",
            ),
          ]),
          html.div(
            [
              attrs.Attr(
                "style",
                "
                position: absolute;
                left: 0;
                top: 0;
                z-index: -1;
                width: 100vw;
                height: 50vh;
                object-fit: cover;
                background-image: linear-gradient(
                  0deg,
                  rgb(255 255 255 / 0.9) 0%,
                  rgb(255 255 255 / 0.5) 20%,
                  rgb(255 255 255 / 0) 50%,
                  rgb(255 255 255 / 0)
                );
                ",
              ),
            ],
            [],
          ),
          html.div(
            [
              attrs.Attr(
                "style",
                "
                max-width: 900px;
                margin: auto;
                margin-top: -300px;
                padding: 24px;
                ",
              ),
            ],
            [
              html.h1(
                [
                  attrs.Attr(
                    "style",
                    "
                    color: #331f26;
                    font-family: 'Neuton', serif;
                    font-size: 128px;
                    font-weight: 400;
                    ",
                  ),
                ],
                [html.Text("Nakai.")],
              ),
              html.div(
                [],
                [
                  html.p(
                    [],
                    [
                      html.Text(
                        "A server-side rendering framework for building web apps with Gleam ✨",
                      ),
                    ],
                  ),
                  html.p(
                    [],
                    [
                      html.Text("Run into a bug?"),
                      html.space(),
                      html.a(
                        [
                          attrs.href(
                            "https://github.com/nakaibuild/nakai/issues",
                          ),
                        ],
                        [html.Text("Report it!")],
                      ),
                    ],
                  ),
                  html.p(
                    [],
                    [
                      html.Text("Want to contribute?"),
                      html.space(),
                      html.a(
                        [attrs.href("https://github.com/nakaibuild/nakai")],
                        [html.Text("Please do!")],
                      ),
                    ],
                  ),
                ],
              ),
              html.Element(
                "footer",
                [
                  attrs.Attr(
                    "style",
                    "
                    color: #999;
                    padding-top: 192px;
                    font-size: 18px;
                    ",
                  ),
                ],
                [
                  html.Element(
                    "span",
                    [],
                    [html.Text("Made with 💕 by queer people 🏳️‍🌈")],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  )
}
