func countdown(_ i: Int) {
    print(i)
    if i <= 0 {           //Base case
        return
    } else {
        countdown(i - 1)  //Recursive case
    }
}
