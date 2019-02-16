//The todo list has only two actions: push(add a new item to the top) and pop(remove the top most item and read it)

func greet(_ name: String) {
    print("hello, " + name + "!")
    greet2(name)
    print("getting ready to say bye...")
    bye()
}

func greet2(_ name: String) {
    print("how are you, " + name + "?")
}

func bye() {
    print("ok bye!")
}

//The call stack with recursion

func fact(_ x: Int) {
    if x == 1 {
        return 1
    } else {
        return x * fact(x - 1)
    }
}

//All function calls go onto the call stack
