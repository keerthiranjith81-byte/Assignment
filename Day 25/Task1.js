try {
  console.log(number);
} catch (error) {
  if (error instanceof ReferenceError) {
    console.error("ReferenceError caught:", error.message);
  } else {
    console.error("Some other error:", error.message);
  }
}
