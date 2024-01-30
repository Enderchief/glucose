import glucose/dom

/// Select the first element matching the selector string
@external(javascript, "../doc.ffi.mjs", "query_selector")
pub fn query_selector(selector selector: String) -> Result(dom.HTMLElement, Nil)

/// Select all elements matching the selector string
@external(javascript, "../doc.ffi.mjs", "query_selector_all")
pub fn query_selector_all(selector selector: String) -> List(dom.HTMLElement)

@external(javascript, "../doc.ffi.mjs", "append_child")
pub fn append_child(node node: dom.HTMLElement) -> dom.HTMLElement

@external(javascript, "../doc.ffi.mjs", "doc")
pub fn doc() -> dom.Document

@external(javascript, "../doc.ffi.mjs", "url")
pub fn url() -> string

@external(javascript, "../doc.ffi.mjs", "body")
pub fn body() -> dom.HTMLElement

@external(javascript, "../doc.ffi.mjs", "contentType")
pub fn content_type() -> String

@external(javascript, "../doc.ffi.mjs", "document_uri")
pub fn document_uri() -> String

@external(javascript, "../doc.ffi.mjs", "get_cookie")
pub fn get_cookie() -> String

@external(javascript, "../doc.ffi.mjs", "set_cookie")
pub fn set_cookie(v v: String) -> Nil

@external(javascript, "../doc.ffi.mjs", "head")
pub fn head() -> dom.HTMLElement

@external(javascript, "../doc.ffi.mjs", "location")
pub fn location() -> String

@external(javascript, "../doc.ffi.mjs", "set_location")
pub fn set_location(url url: String) -> Nil

@external(javascript, "../doc.ffi.mjs", "ready_state")
pub fn ready_state() -> String

@external(javascript, "../doc.ffi.mjs", "referrer")
pub fn referrer() -> String

@external(javascript, "../doc.ffi.mjs", "title")
pub fn title() -> String

@external(javascript, "../doc.ffi.mjs", "set_title")
pub fn set_title(v v: String) -> Nil

@external(javascript, "../doc.ffi.mjs", "create_element")
pub fn create_element(tag tag: String) -> dom.HTMLElement

@external(javascript, "../doc.ffi.mjs", "create_text_node")
pub fn create_text_node(data data: String) -> dom.HTMLElement

@external(javascript, "../doc.ffi.mjs", "get_selection")
pub fn get_selection() -> Result(dom.HTMLElement, Nil)

@external(javascript, "../doc.ffi.mjs", "has_focus")
pub fn has_focus() -> Bool
