// Checks if the number is even or odd.

// Method:1 Using if..else condition.

function checkevenodd(number){
    if(number % 2===0){
        console.log(number,"is Even");  
    }else{
        console.log(number,"is Odd"); 
    }
}

checkevenodd(713);
checkevenodd(568);


// Method:2 Using ternary operator.

function evenodd(number){
    console.log(number % 2===0 ? number + " is Even" : number + " is Odd");
    
}

evenodd(4698);
evenodd(6857);