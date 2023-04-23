if javascript {
  pub external fn back() -> Nil =
    "" "history.back"

  pub external fn forward() -> Nil =
    "" "history.forward"

  pub external fn go(delta: Int) -> Nil =
    "" "history.go"

  pub external fn push_state(data: a, unused: String, url: String) -> Nil =
    "" "history.pushState"

  pub external fn replace_state() -> Nil =
    "" "history.replaceState"

  pub external fn length() -> Int =
    "../ffi_globals.js" "$h_length"

  pub external fn state() -> String =
    "../ffi_globals.js" "$h_state"
}
