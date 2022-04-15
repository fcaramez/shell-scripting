#! node

const readline = require("readline").createInterface({
  input: process.stdin,
  output: process.stdout,
});

readline.question("What's your anual income? ", (yearlyIncome) => {
  switch (yearlyIncome) {
    case yearlyIncome <= 7112:
      yearlyIncome /= 1.145;
      break;
    case yearlyIncome <= 10732:
      yearlyIncome /= 1.23;
      break;
    case yearlyIncome <= 20322:
      yearlyIncome /= 1.28;
      break;
    case yearlyIncome <= 25075:
      yearlyIncome /= 1.35;
      break;
    case yearlyIncome <= 36967:
      yearlyIncome /= 1.37;
      break;
    case yearlyIncome <= 80882:
      yearlyIncome /= 1.45;
      break;
    case yearlyIncome > 80882:
      yearlyIncome /= 1.48;
      break;
  }

  yearlyIncome = Math.floor(yearlyIncome / 1.11 / 14);
  console.log("Your monthly salary is: ", yearlyIncome);
  readline.close();
});
