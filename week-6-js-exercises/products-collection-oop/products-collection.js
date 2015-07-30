function ProductList(products) {
    this.products = products;
}

ProductList.prototype.count = function() {
    return this.products.length;
};

ProductList.prototype.getNames = function () {
    return this.products.map(function(product) {
        return product.name;
    });
};

ProductList.prototype.filterByBrand = function (brand) {
    return this.products.filter(function(product) {
        return product.brand === brand;
    });
};

ProductList.prototype.countByBrand = function (brand) {
    return this.filterByBrand(brand).length;
};

ProductList.prototype.groupByBrand = function (brand) {
    // var results = {};
    // this.products.forEach(function(product) {
    //     if (!results[product.brand]) {
    //         results[product.brand] = [];
    //     }
    //     results[product.brand].push(product);
    // });

    return this.products.reduce(function(accumulator, product) {
        if (!accumulator[product.brand]) {
            accumulator[product.brand] = [];
        }
        accumulator[product.brand].push(product);
        return accumulator;
    }, {});
};


ProductList.prototype.cheapest = function (price) {
    return this.Math.min.apply( );
};

var list = new ProductList([
    { name: "Samsung Galaxy S6 Edge", price: 829.90, brand: "Samsung" },
    { name: "LG G Flex", price: 689.90, brand: "LG" },
    { name: "Apple iPhone 6 Plus", price: 779.90, brand: "Apple" },
    { name: "Samsung Galaxy Alpha", price: 589.90, brand: "Samsung" },
    { name: "Nokia Lumia 930", price: 489.90, brand: "Nokia" },
    { name: "Sony Xperia Z3 Compact", price: 389.90, brand: "Sony" },
    { name: "Apple iPhone 6", price: 779.90, brand: "Apple" },
    { name: "Huawei Ascend G7", price: 259.90, brand: "Huawei" },
    { name: "Sony Xperia T2 Ultra", price: 359.90, brand: "Sony" },
    { name: "LG G4", price: 589.90, brand: "LG" },
    { name: "Samsung Galaxy Note 4", price: 689.90, brand: "Samsung" },
    { name: "HTC One M9", price: 674.90, brand: "HTC" },
    { name: "Apple iPhone 5S", price: 589.90, brand: "Apple" }
]);

// console.log(list.count());
// console.log(list.getNames());
// console.log(list.filterByBrand("LG"));
// console.log(list.countByBrand("LG"));
console.log(list.groupByBrand());
