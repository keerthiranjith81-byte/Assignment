function doTask(callback) {
  setTimeout(() => {
    callback("Task Completed");
  }, 2000);
}

doTask((message) => {
  console.log(message);
});



function doTaskPromise() {
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      resolve("Task Completed");
    }, 2000);
  });
}

doTaskPromise()
  .then((message) => {
    console.log(message);
  });
