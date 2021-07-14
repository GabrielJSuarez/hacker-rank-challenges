// Complete the catAndMouse function below.
function catAndMouse(x, y, z) {
    const CAT_A_DISTANCE = (z > x) ? (z - x) : ((z - x) * -1);
    const CAT_B_DISTANCE = (z > y) ? (z - y) : ((z - y) * -1);

    if (CAT_A_DISTANCE === CAT_B_DISTANCE){
        return 'Mouse C';
    } else if (CAT_A_DISTANCE > CAT_B_DISTANCE) {
        return 'Cat B';
    } else {
        return 'Cat A';
    }
}