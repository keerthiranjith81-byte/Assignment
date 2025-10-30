// Printing my name(3 times) using function in four different methods.

// Method:1 {Just call console.log() 3 times }

function name(){
    console.log("Keerthi Ranjith");
    console.log("Keerthi Ranjith");
    console.log("Keerthi Ranjith");
    
}

name();


// Method:2 {Using for loop in function (also can use while and do while loop)}:

function myname(){
    for (let i=1;i<=3;i++){
        console.log("Keerthi Ranjith");
        
    }
}
    
myname();


// Metho:3 {Using repeat}

function printname() {
    console.log("Keerthi Ranjith\n".repeat(3)); 
}

printname();


// Method:4 {Using recursion(a function calling itself)}

function printmyName(count=1){
    console.log("Keerthi Ranjith");
    if (count<3){
        printmyName(count+1)
    }
    
}

printmyName();