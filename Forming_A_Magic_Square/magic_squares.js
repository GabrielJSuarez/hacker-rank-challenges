function formingMagicSquare(input) {
    // Flatten array for ease of access
    let magic_square = input.flat();
    // We know a 3x3 magic square has all sums === 15a
    // We also know that there are 8 unique solutions to a 3x3 magic square
    const squares_set = [
        [8, 1, 6, 3, 5, 7, 4, 9, 2],
        [4, 3, 8, 9, 5, 1, 2, 7, 6],
        [2, 9, 4, 7, 5, 3, 6, 1, 8],
        [6, 7, 2, 1, 5, 9, 8, 3, 4],
        [6, 1, 8, 7, 5, 3, 2, 9, 4],
        [8, 3, 4, 1, 5, 9, 6, 7, 2],
        [4, 9, 2, 3, 5, 7, 8, 1, 6],
        [2, 7, 6, 9, 5, 1, 4, 3, 8]
    ];

    // Now we just track which given magic square is the least distance from our matrix

    // This will report the least cost (abet, brute force-y)
    let cost = Math.min();

    for (let i = 0; i < squares_set.length; i += 1) {
        let currCost = 0;
        for (let j = 0; j < magic_square.length; j += 1) {
            currCost += Math.abs(squares_set[i][j] - magic_square[j]);
        }
        if (currCost < cost) {
            cost = currCost;
        }
    }
    console.log(cost);
}

formingMagicSquare([[5, 3, 4], [1, 5, 8], [6, 4, 2]] )