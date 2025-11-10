function checkNumber(num) {
  if (num < 0) {
    throw new Error("Negative numbers are not allowed!");
  }
  return "Valid number: " + num;
}

try {
  console.log(checkNumber(-10)); 
} catch (error) {
  console.error("Error:", error.message);
}
