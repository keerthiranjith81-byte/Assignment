
function Student(name, age) {
  this.name = name;
  this.age = age;
}

Student.prototype.sayHello = function () {
  console.log("Hello, my name is " + this.name);
};


let aa = new Student("Keerthi", 23);
let bb = new Student("Aarthi", 23);

aa.sayHello(); 
bb.sayHello();
