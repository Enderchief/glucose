export const back = history.back.bind(history);
export const forward = history.forward.bind(history);
export const go = history.go.bind(history);
export const pushState = history.pushState.bind(history);
export const replaceState = history.replaceState.bind(history);
export const length = () => history.length;
export const state = () => history.state;
