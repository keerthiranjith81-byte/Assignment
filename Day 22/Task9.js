class Shape {
  constructor(name) {
    this.name = name;
  }

  displayName() {
    console.log(`Shape: ${this.name}`);
  }
}

class Circle extends Shape {
  constructor(radius) {
    super("Circle"); 
    this.radius = radius;
  }

  area() {
    return Math.PI * this.radius * this.radius;
  }
}

let c = new Circle(5);

c.displayName();
console.log("Area:", c.area());
