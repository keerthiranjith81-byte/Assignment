
class Product {
  constructor(name, price) {
    this.name = name;
    this.price = price;
  }

  discountedPrice(discountPercent) {
    let discount = (this.price * discountPercent) / 100;
    let finalPrice = this.price - discount;
    console.log(`Product: ${this.name}`);
    console.log(`Original Price: ₹${this.price}`);
    console.log(`Discount: ${discountPercent}%`);
    console.log(`Discounted Price: ₹${finalPrice}`);
  }
}

let product1 = new Product("Laptop", 60000);

product1.discountedPrice(10);
