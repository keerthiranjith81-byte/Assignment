function doTask(callback) {
  setTimeout(function() {
    callback();
  }, 3000);
}

doTask(function() {
  console.log("Task Completed");
});
