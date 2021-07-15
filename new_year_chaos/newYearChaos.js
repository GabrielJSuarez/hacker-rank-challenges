function minimumBribes(queue) {
    let chaotic = false
    var bribes = 0
    for (let i = 0; i < queue.length; i++) {
        if (queue[i] - (i+1) > 2) { chaotic = true }

        for (let j = queue[i] - 2; j < i; j++) {
            if (queue[j] > queue[i]) {
                bribes++
            }
        }
    }
    if(chaotic === true){
        console.log("Too chaotic")
    } else {
        console.log(bribes)
    }
}

minimumBribes([1, 2, 5, 3, 7, 8, 6, 4]) // [1, 2, 3, 4, 5]