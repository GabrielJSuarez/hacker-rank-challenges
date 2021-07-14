function getMoneySpent(keyboards, drives, b) {
    let prices = [];
    for (let i = 0; i < keyboards.length; i += 1) {
        if (keyboards[i] >= b) continue
        for (let j = 0; j < drives.length; i+= 1) {
            let combo = keyboards[i] + drives[i]
            if (combo > b) continue
            prices.push(combo);
        }
    }
    return Math.max(...prices)
}