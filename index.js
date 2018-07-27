// For more comments about what's going on here, check out the `hello_world`
// example
const rust = import('./dist/game');
console.log(rust);
rust.then(m => {
  console.log("compiled!");
  console.dir(m);
  m.greet();
}).catch(err => {
  console.dir(err);
});

// const wasm = require("./dist/game");
// console.log(wasm);
