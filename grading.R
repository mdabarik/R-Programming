

letterToGrade = function(x) {
  grade = "";
  # corner case (handling invalid input)
  if (x < 0 || x > 100) {
    grade = "Invalid input";
    return (grade); # exit
  }
  # main logic
  if (x >= 80) {
    grade = "A+";
  } else if (x >= 75) {
    grade = "A";
  } else if (x >= 70) {
    grade = "A-";
  } else if (x >= 65) {
    grade = "B+";
  } else if (x >= 60) {
    grade = "B";
  } else if (x >= 55) {
    grade = "B-";
  } else if (x >= 50) {
    grade = "C+";
  } else if (x >= 45) {
    grade = "C-";
  } else if (x >= 40) {
    grade = "C";
  } else {
    grade = "F";
  }
  return (grade);
}

letterToGrade(55)

















