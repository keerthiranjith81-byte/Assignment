// Add two numbers in function (3 Different methods):

// Method:1 {Using a regular function} (ADDITION)

function add(a,b){
    return a+b ;
}

let sum = add(569,268)
console.log("The sum is:",sum);

// Method:2 {Using experssion function}. (MULTIPLICATION)

const mulnum = function(x,y){
    return x*y;
}

console.log("The result is:",mulnum(26,38));

// Method:3 {Using arrow function}. (DIVISION)

const divnum = (p,q) => p/q;

console.log("The answer is:",divnum(625,25));


