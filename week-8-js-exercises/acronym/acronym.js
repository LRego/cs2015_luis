function makeAcronym(value) {

  if (typeof value !== 'string') {
    return "Not a string";
  }
  if (value.length !== 0 && value.match(/^[a-zA-Z ]+$/) === null ) {
    return "Not letters";
  }
  else {
    return value.split(" ").map(function(word) {
      return word.charAt(0).toUpperCase();
    }).join("");
  }
}

console.log(makeAcronym("Hello World"));
console.log(makeAcronym("Hello codewarrior"));
console.log(makeAcronym("a42"));
console.log(makeAcronym("42"));
console.log(makeAcronym([2,12]));
