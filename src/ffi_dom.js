// @ts-check

/**
 * @param {string} t
 * @returns {string}
 */
function toCamel(t) {
  return t.replace(/([-_][a-z])/g, (group) =>
    group
      .toUpperCase()
      .replace("-", "")
      .replace("_", ""));
}

/**
 * @param {any} obj
 * @param {string} attribute
 */
export function get(obj, attribute) {
  return obj[attribute];
}

/**
 * @param {any} obj
 * @param {string} prop
 * @param {(value: any) => any} updater
 */
export function update(obj, prop, updater) {
  obj[prop] = updater(obj[prop]);
}

/**
 * @param {any} obj
 * @param {string} prop
 * @param {any} value
 */
export function set(obj, prop, value) {
  obj[prop] = value;
}

/**
 * @param {EventTarget} elem
 * @param {string} event_name
 * @param {(e: Event) => void} handler
 */
export function event(elem, event_name, handler) {
  elem.addEventListener(event_name, handler);
}
