let sentence = "The movie is not that bad, I like it";

let wordNot = sentence.indexOf("not");

let wordBad = sentence.indexOf("bad");

if (wordNot !== -1 && wordBad !== -1 && wordBad > wordNot) {
  let partBefore = sentence.slice(0, wordNot); 
  let partAfter = sentence.slice(wordBad + 3); 
  let newSentence = partBefore + "good" + partAfter;
  console.log(newSentence.trim());
} else {
  console.log(sentence);
}
