function createAsyncCounter() {
  let count = 0; 

  return function incrementAsync() {
    return new Promise((resolve) => {
      setTimeout(() => {
        count++;
        console.log(`Counter updated: ${count}`);
        resolve(count);
      }, 1000); 
    });
  };
}

const counter = createAsyncCounter();

async function run() {
  await counter(); 
  await counter(); 
  await counter(); 
}

run();
