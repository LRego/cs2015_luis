//Store
function Store(products) {
  this.catalog = new Catalog(products);
  this.cart = new Cart();
}

Store.prototype.getCatalog = function () {
  return this.catalog.getProducts();
};

Store.prototype.getCartItems = function () {
  return this.cart.getItems();
};

Store.prototype.getCartTotal = function () {
  return this.cart.getTotal();
};

Store.prototype.addProductToCart = function (product) {
  this.cart.add(product);
};

Store.prototype.removeProductFromCart = function (product) {
  this.cart.remove(product);
};

//Catalog
function Catalog() {
  this.products = products || [];
}
Catalog.prototype.getProducts = function () {
  return this.products;
};

//Cart
function Cart() {
  this.items = [];
}
Cart.prototype.getItems = function () {
  return this.items;
};

Cart.prototype.add = function (product) {
  this.items.push(product);
};
Cart.prototype.remove = function (product) {
  this.items.splice(this.items.indexOf(product), 1);
};
Cart.prototype.getTotal = function () {
  return this.items.reduce(function(total, item) {
    return total += item.price;
  }, 0);
};

// Run App
var products = [
  { id: 1, name: 'Apples', price: 0.32 },
  { id: 2, name: 'Oranges', price: 0.40 },
  { id: 3, name: 'Bananas', price: 0.78 }
];

var myStore = new Store(products);
var peaches = {id: 4, name: 'Peaches', price: 0.32};
var ananas = {id: 5, name: 'Ananas', price: 0.40};

myStore.addProductToCart(peaches);
myStore.addProductToCart(ananas);
// myStore.removeProductFromCart(peaches);
// console.log(myStore.getCatalog());
// console.log(myStore.getCartItems());
console.log(myStore.getCartTotal());
