let book = {
  title: "The Great Gatsby",
  author: "F. Scott Fitzgerald",
  pages: 180,

  describe: function() {
    console.log(`"${this.title}" by ${this.author}, ${this.pages} pages.`);
  }
};


book.describe();
