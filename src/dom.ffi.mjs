// @ts-check
// @ts-expect-error
import { Error, Ok } from "./gleam.mjs";

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
  if (typeof obj !== "object") return new Error();
  return new Ok(obj[attribute]);
}

/**
 * @param {any} obj
 * @param {string} prop
 * @param {(value: any) => any} updater
 */
export function update(obj, prop, updater) {
  if (typeof obj !== "object") return new Error();
  obj[prop] = updater(obj[prop]);
}

/**
 * @param {any} obj
 * @param {string} prop
 * @param {any} value
 */
export function set(obj, prop, value) {
  if (typeof obj !== "object") return new Error();
  obj[prop] = value;
  return new Ok();
}

/**
 * @param {EventTarget} elem
 * @param {string} event_name
 * @param {(e: Event) => void} handler
 */
export function event(elem, event_name, handler) {
  elem.addEventListener(event_name, handler);
  return () => {
    elem.removeEventListener(event_name, handler);
  };
}
