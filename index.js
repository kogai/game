// For more comments about what's going on here, check out the `hello_world`
// example
const rust = import('./dist/game.opt');
rust.then(m => m.greet());
