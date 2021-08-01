console.log("Hello world!");

const readline = require('readline').createInterface({
  input: process.stdin,
  output: process.stdout
});
 
readline.question('Who are you? ', name => {

  if (name.toLowerCase() == "firass" || name.toLowerCase() == "izzedin") {
    console.log("You are really cool!");
  } else if (name.toLowerCase() == "nabil") {
    console.log("You are really lame!");
  } else {
    console.log("You are alright.");
  }
  console.log(`Hey there ${name}!`);
  readline.close();
});