// array of numbers and returns the sum using a loop.

function sumArray(numbers) {
  let sum = 0; 
  for (let i = 0; i < numbers.length; i++) {
    sum += numbers[i]; 
  }
  return sum;
}


console.log(sumArray([10, 20, 30, 40])); 
