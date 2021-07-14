function breakingRecords(scores) {
    // Write your code here
    let highest_score = scores[0];
    let lowest_score = scores[0];

    let highest_score_counter = 0;
    let lowest_score_counter = 0;

    scores.forEach(score => {
        if (score > highest_score) {
            highest_score_counter += 1;
            highest_score = score;
        } else if (score < lowest_score) {
            lowest_score_counter += 1;
            lowest_score = score;
        }
    });

    return [highest_score_counter, lowest_score_counter];
}