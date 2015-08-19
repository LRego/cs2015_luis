angular
  .module('storeApp', [])
  .directive('storeCatalog', storeCatalog)
  .directive('storeCart', storeCart)
  .controller('CatalogCtrl', CatalogCtrl)
  .controller('CartCtrl', CartCtrl)
  .factory('Store', Store);

  function storeCart() {
    return {
      restrict: 'A',
      templateUrl: 'cart.html',
      controller: 'CartCtrl',
      controllerAs: 'ctrl',
      scope: {}
    };
  }

  function CartCtrl(Store) {
    var ctrl = this;

    ctrl.items = Store.cart.items;
    ctrl.store = Store;
    ctrl.remove = function(item) {
      Store.removeProductFromCart(item);
    };
  }

  function storeCatalog() {
    return {
      restrict: 'A', // 'E', 'C'
      templateUrl: 'catalog.html',
      controller: 'CatalogCtrl',
      controllerAs: 'ctrl',
    };
  }

  function CatalogCtrl(Store) {
    var ctrl = this;

    ctrl.title = "Catalog dynamic title";
    ctrl.currency = "$";

    ctrl.addToCart = function(product) {
      Store.addProductToCart(product);
    };
    ctrl.products = Store.getCatalog();
  }

  function Store() {
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
    function Catalog(products) {
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
      var index = this.items.indexOf(product);

      if (index > -1) {
        this.items[index].quantity += 1;
      } else {
        product.quantity = 1;
        this.items.push(product);
      }
    };

    Cart.prototype.remove = function (product) {
      product.quantity = 0;
      this.items.splice(this.items.indexOf(product), 1);
    };

    Cart.prototype.getTotal = function () {
      return this.items.reduce(function(total, item) {
        return total += item.price * item.quantity;
      }, 0);
    };

  return new Store([
    { id: 1, name: "Apples", price: 0.20, quantity: 0 },
    { id: 2, name: "Oranges", price: 0.40, quantity: 0},
    { id: 3, name: "Ananas", price: 0.60,  quantity: 0}
  ]);
}
