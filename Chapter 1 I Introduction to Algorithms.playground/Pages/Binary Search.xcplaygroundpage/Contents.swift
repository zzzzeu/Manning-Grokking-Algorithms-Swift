func binary_search(list: [Int], target: Int) -> Int? {
    var low = 0, high = list.count - 1
    while low <= high {
        let mid = (low + high) / 2
        if list[mid] == target {
            return mid
        }
        if list[mid] > target {
            high = mid - 1
        } else {
            low = mid + 1
        }
    }
    return nil
}
