// stars :
// methode 1 :

let stars = "*";
for (let i = 0; i < 6; i++) {
  console.log(stars);
  stars += "*";
}

let star = "*";
for (let i = 0; i < 6; i++) {
  line = "";
  for (e = 0; e <= i; e++) {
    line += star + " ";
  }
  console.log(line);
}
