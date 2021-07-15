function hourglassSum(arr) {
    // Write your code here
    let sumArr = [];
    let sum;
    for (let i = 0; i <= 3; i += 1) {
        for (let j = 0; j <= 3; j += 1) {
            sum = arr[i][j] + arr[i][j + 1] + arr[i][j + 2] + arr[i + 1][j + 1] + arr[i + 2][j] + arr[i + 2][j + 1] + arr[i + 2][j + 2];
            sumArr.push(sum);
        }
    }
    return Math.max(...sumArr);
}
console.log(hourglassSum(
    [
        [3, 7, -3, 0, 1, 8],
        [1, -4, -7, -8, -6, 5],
        [-8, 1, 3, 3, 5, 7],
        [-2, 4, 3, 1, 2, 7],
        [2, 4, -5, 1, 8, 4],
        [5, -7, 6, 5, 2, 8]
    ]))
