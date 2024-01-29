/// Reference to `document` in JavaScript.
pub type Document

/// `HTMLElement` type from JavaScript
pub type HTMLElement

/// Universal getter for JavaScript items
///
/// ```gleam
/// io.println(get(elem, "className"))
/// ```
/// Equivalent to
/// ```js
/// console.log(elem["className"])
/// // console.log(elem.className)
@external(javascript, "../ffi_dom.js", "get")
pub fn get(obj obj: a, attribute attribute: String) -> t

/// Update an attribute using an updater function
///
/// ```gleam
/// // assuming `app` is an element
/// update(app, "innerText", fn (text) {
///     text <> " world"
/// })
@external(javascript, "../ffi_dom.js", "update")
pub fn update(
  obj obj: a,
  attribute attribute: String,
  updater updater: fn(b) -> b,
) -> Nil

/// Set an attribute of an item
///
/// ```gleam
/// set(app, "innerHTML", "<h1>Hello Gleam!</h1>")
@external(javascript, "../ffi_dom.js", "set")
pub fn set(obj obj: a, attribute attribute: String, value value: b) -> Nil

/// Add an event listener to an element
///
/// ```gleam
/// event(btn, "click", fn () {
///     io.println("pressed!")   
/// })
@external(javascript, "../ffi_dom.js", "event")
pub fn event(
  element element: HTMLElement,
  event event: String,
  handler handler: fn() -> Nil,
) -> Nil

@target(javascript)
@external(javascript, "", "clearInterval")
pub fn clear_interval(id id: Int) -> Nil

@target(javascript)
@external(javascript, "", "clearTimeout")
pub fn clear_timeout(id id: Int) -> Nil

@target(javascript)
@external(javascript, "", "setInterval")
pub fn set_interval(a: fn() -> Nil, b: Float) -> Int

@target(javascript)
@external(javascript, "", "setTimeout")
pub fn set_timeout(a: fn() -> Nil, b: Float) -> Int

@target(javascript)
@external(javascript, "../ffi_globals.js", "$inner_size")
pub fn inner_size() -> #(Float, Float)
