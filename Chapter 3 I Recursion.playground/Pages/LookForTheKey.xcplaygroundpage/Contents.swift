struct Box {
    let boxItems: [BoxItem]
    
    enum BoxItem {
        case box(Box)
        case key(String)
    }
}

func lookForTheKeyWay1(mainBox: Box) {
    var pile = mainBox.boxItems
    while !pile.isEmpty {
        let box = pile.removeFirst()
        switch box {
        case .box(let box):
            pile += box.boxItems
        case .key(let string):
            print("found key: \(string)")
        }
    }
}

func lookForTheKeyWay2(box: Box) {
    for item in box.boxItems {
        switch item {
        case .box(let box):
            lookForTheKeyWay2(box: box)
        case .key(let string):
            print("found key: \(string)")
        }
    }
}
