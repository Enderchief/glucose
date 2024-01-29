@external(javascript, "", "history.back")
pub fn back() -> Nil

@external(javascript, "", "history.forward")
pub fn forward() -> Nil

@external(javascript, "", "history.go")
pub fn go(delta delta: Int) -> Nil

@external(javascript, "", "history.pushState")
pub fn push_state(data data: a, unused unused: String, url url: String) -> Nil

@external(javascript, "", "history.replaceState")
pub fn replace_state() -> Nil

@external(javascript, "../ffi_globals.js", "$h_length")
pub fn length() -> Int

@external(javascript, "../ffi_globals.js", "$h_state")
pub fn state() -> String
