//madLib
function madLib(verb, noun, adjective) {
  return `We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}`;
}


// isSubstring
function isSubstring(searchString, subString) {
  return searchString.includes(subString);
}

//fizzBuzz
function fizzBuzz(arr) {
  const newArr = [];

  arr.forEach(el => {
    if ((el % 3 === 0) ^ (el % 5 === 0)) {
      newArr.push(el);
    }
  });
  return newArr;
}
