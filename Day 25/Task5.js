function checkMaxLimit(num) {
  if (num > 100) {
    throw new Error("Number cannot be greater than 100!");
  }
  return "Valid number: " + num;
}

try {
  console.log(checkMaxLimit(150)); 
} catch (error) {
  console.error("Error:", error.message);
}
