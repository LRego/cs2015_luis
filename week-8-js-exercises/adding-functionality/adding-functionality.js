Array.prototype.sum = function () {
  return this.reduce(function(sum, val) {
    return sum + val;
  });
};

Array.range = function(start, count) {
  var arr = [];
      val = start;
  while (count > 0) {
    arr.push(val);
    count--;
    val++;
  }
  return arr;
};

console.log([0, 1, 2].sum());
console.log(Array.range(0, 3));
