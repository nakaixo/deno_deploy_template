import nakai
import pages/home

pub fn main() {
  home.page()
  |> nakai.render
}
