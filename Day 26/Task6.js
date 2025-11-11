function sum(...numbers) {
  let total = 0;
  numbers.forEach(num => total += num);
  return total;
}

console.log(sum(5, 10));        
console.log(sum(1, 2, 3, 4));   
console.log(sum(10, 20, 30));  
