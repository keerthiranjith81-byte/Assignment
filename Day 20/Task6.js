// Grade Marks using function in three different method.

// Method:1 {Using else_if condition}.

function grade(mark){
    if(mark >= 85){
        console.log("Grade A");
    }else if(mark >= 60 ){
        console.log("Grade B");
    }else {
        console.log("Grade C"); 
    }
}

grade(90);
grade(55);
grade(76);


// Method:2 {Using ternary operator}.

function rank(score){
    console.log(score >=85?"Grade A++":score >=65?"Grade A+":"Grade B");
    
}

rank(96);
rank(69);
rank(43);


// Method:3 {Using arrow function}.

const getGrade = marks => 
  marks >= 80 ? "A" : marks >= 60 ? "B" : "C";

console.log(getGrade(88)); 
console.log(getGrade(62)); 
console.log(getGrade(40)); 
