function max (a, b) {
    if (a > b) {
        return a;
    } else {
        return b;
    }

}

console.log(max(3, 8));

function min(a, b, c) {
    if (a > b) {
        return a;
    } else if (b > c) {
        return b;
    }
    else {
        return c;
    }
}

console.log(min(3, 4, 5));

function isVowel(s) {
    var x = s.toUpperCase();
    if (x == "A" || x == "E" || x == "I" || x == "O" || x == "U") {
        return true;
    } else {
        return false;
    }
}

console.log(isVowel("a"));

function convertToCelsius(temperature) {
    return ((5.0 / 9.0) * (temperature - 32));
}

console.log(convertToCelsius(34));

function convertToFahrenheit(temperature) {
    return ((9.0 / 5.0) * (temperature + 32));
}

console.log(convertToFahrenheit(45));
