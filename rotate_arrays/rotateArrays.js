function rotLeft(a, d) {
    // Write your code here
    for (let i = d; i > 0; i -= 1) {
        let element = a.shift();
        a.push(element);
    }
    return a;
}

console.log(rotLeft([1, 2, 3, 4, 5], 4))