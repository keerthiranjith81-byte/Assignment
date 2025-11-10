try {
  let result = 10 / x; 
  console.log(result);
} catch (error) {
  console.log("Error occurred:", error.message);
} finally {
  console.log("Code executed.");
}
