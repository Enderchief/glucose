@external(javascript, "../history.ffi.mjs", "back")
pub fn back() -> Nil

@external(javascript, "../history.ffi.mjs", "forward")
pub fn forward() -> Nil

@external(javascript, "../history.ffi.mjs", "go")
pub fn go(delta delta: Int) -> Nil

@external(javascript, "../history.ffi.mjs", "pushState")
pub fn push_state(data data: a, unused unused: String, url url: String) -> Nil

@external(javascript, "../history.ffi.mjs", "replaceState")
pub fn replace_state() -> Nil

@external(javascript, "../history.ffi.mjs", "length")
pub fn length() -> Int

@external(javascript, "../history.ffi.mjs", "state")
pub fn state() -> String
