function checkAge(age) {
  if (age < 18) {
    throw new Error("Access denied — You must be at least 18 years old!");
  }
  return "Access granted — Welcome!";
}

try {
  console.log(checkAge(15)); 
} catch (error) {
  console.error("Error:", error.message);
}
