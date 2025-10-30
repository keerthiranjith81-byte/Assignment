// Callback function.

function dotask(){
    console.log("Task is completed.");
}

function runtask(callback){
    console.log("Task is running....");
    setTimeout(()=>{
        console.log("Main Task finished.");
        callback();
        
    },5000);
}

runtask(dotask);