var cart = {
  items: [],
  add: function(product) {
    this.items.push(product);
  },
  remove: function(product) {
    // this.items.splice(product, 1);
    var index = this.items.indexOf(product);
    this.items.splice(index, 1);
  },
  total: function(price) {
    var total = 0;
    this.items.forEach(function(product) {
      return total += product.price;
    });
    return total;
  }
};

var productA = { price: 5 };
var productB = { price: 10 };

cart.add(productA);
cart.add(productB);

cart.remove(productA);

console.log(cart.total());
