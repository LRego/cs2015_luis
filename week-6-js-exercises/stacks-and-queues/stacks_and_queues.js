function Stack() {
    this.data = [];
}

Stack.prototype.push = function (value) {
    this.data.push(value);
};

Stack.prototype.pop = function () {
    return this.data.pop();
};


var myStack = new Stack();

console.log(myStack);

myStack.push(1);
myStack.push(3);
myStack.pop();


function Queue() {
    this.data = [];
}

Queue.prototype.enqueue = function (value) {
    this.data.unshift(value);
};

Queue.prototype.dequeue = function () {
    return this.data.pop();
};

var myQueue = new Queue();

console.log(myQueue);

myQueue.enqueue(2);
myQueue.enqueue(3);
myQueue.dequeue();
myQueue.dequeue();
