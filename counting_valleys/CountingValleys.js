function countingValleys(steps, path) {
    // Write your code here
    let prev_level = 0;
    let current_level = 0;
    let valleys = 0;
    let path_arr = path.split('');

    path_arr.forEach(step => {
        if (step === 'D') {
            prev_level = current_level;
            current_level -= 1;
        } else if (step === 'U') {
            prev_level = current_level;
            current_level += 1;
            if (prev_level < 0 && current_level >= 0) valleys += 1;
        }
    });
    return valleys;
}