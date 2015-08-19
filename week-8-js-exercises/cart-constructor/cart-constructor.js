function Cart() {
  this.items = [];
}

Cart.prototype.add = function (product) {
  this.items.push(product);
};
Cart.prototype.total = function () {
  return this.items.reduce(function (total, item) {
    return total += item.price;
  }, 0);
};
Cart.prototype.removeById = function (id) {
  this.items = this.items.filter(function(item) {
    return item.id !== id;
  });
};

var productA = { id: 1, price: 50 };
var productB = { id: 2, price: 100 };

var mycart = new Cart();

mycart.add(productA);
mycart.add(productB);
mycart.total();

mycart.removeById(productA.id);

console.log(mycart.total());
