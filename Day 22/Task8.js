class Student {
  constructor(name, age, course) {
    this.name = name;
    this.age = age;
    this.course = course;
  }

  display() {
    console.log(`Name: ${this.name}, Age: ${this.age}, Course: ${this.course}`);
  }
}

let s1 = new Student("Aarthi", 20, "BCA");
let s2 = new Student("Keerthi", 21, "B.Sc");
let s3 = new Student("Kavibalan", 19, "B.Tech");

s1.display();
s2.display();
s3.display();
