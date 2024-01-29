import glucose/dom

/// Select the first element matching the selector string
@external(javascript, "", "document.querySelector")
pub fn query_selector(selector selector: String) -> dom.HTMLElement

/// Select all elements matching the selector string
@external(javascript, "../ffi_doc.js", "query_selector_all")
pub fn query_selector_all(selector selector: String) -> List(dom.HTMLElement)

@external(javascript, "", "document.appendChild")
pub fn append_child(node node: dom.HTMLElement) -> dom.HTMLElement

@external(javascript, "../ffi_doc.js", "doc")
pub fn doc() -> dom.Document

@external(javascript, "../ffi_doc.js", "url")
pub fn url() -> string

@external(javascript, "../ffi_doc.js", "body")
pub fn body() -> dom.HTMLElement

@external(javascript, "../ffi_doc.js", "contentType")
pub fn content_type() -> String

@external(javascript, "../ffi_doc.js", "document_uri")
pub fn document_uri() -> String

@external(javascript, "../ffi_doc.js", "get_cookie")
pub fn get_cookie() -> String

@external(javascript, "../ffi_doc.js", "set_cookie")
pub fn set_cookie(v v: String) -> Nil

@external(javascript, "../ffi_doc.js", "head")
pub fn head() -> dom.HTMLElement

@external(javascript, "../ffi_doc.js", "location")
pub fn location() -> String

@external(javascript, "../ffi_doc.js", "set_location")
pub fn set_location(url url: String) -> Nil

@external(javascript, "../ffi_doc.js", "ready_state")
pub fn ready_state() -> String

@external(javascript, "../ffi_doc.js", "referrer")
pub fn referrer() -> String

@external(javascript, "../ffi_doc.js", "title")
pub fn title() -> String

@external(javascript, "../ffi_doc.js", "set_title")
pub fn set_title(v v: String) -> Nil

@external(javascript, "", "document.createElement")
pub fn create_element(tag tag: String) -> dom.HTMLElement

@external(javascript, "", "document.createTextNode")
pub fn create_text_node(data data: String) -> dom.HTMLElement

@external(javascript, "", "document.getSelection")
pub fn get_selection() -> dom.HTMLElement

@external(javascript, "", "document.hasFocus")
pub fn has_focus() -> Bool
