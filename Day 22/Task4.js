
class Employee {
  constructor(name, salary) {
    this.name = name;
    this.salary = salary;
  }

  displayInfo() {
    console.log(`Employee Name: ${this.name}`);
    console.log(`Salary: ₹${this.salary}`);
  }
}

const emp1 = new Employee("Keerthi", 50000);

emp1.displayInfo();
