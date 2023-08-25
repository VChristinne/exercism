func validation(at index: Int, in stack: [Int]) -> Bool {
    return index < stack.count && !stack.isEmpty && index >= 0
}

func getCard(at index: Int, from stack: [Int]) -> Int? {
    if validation(at: index, in: stack) {
        return stack[index]
    }
    return nil
}

func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
    var newStack = stack
    if validation(at: index, in: stack) {
        newStack[index] = newCard
    }
    return newStack
}

func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
    var newStack = stack
    if validation(at: 0, in: stack) && newCard >= 0 {
        newStack.append(newCard)
    }
    return newStack
}

func removeCard(at index: Int, from stack: [Int]) -> [Int] {
    var newStack = stack
    if validation(at: index, in: stack) {
        newStack.remove(at: index)
    }
    return newStack
}

func removeTopCard(_ stack: [Int]) -> [Int] {
    var newStack = stack
    if validation(at: stack.count - 1, in: stack) {
        newStack.removeLast()
    }
    return newStack
}

func insert(_ newCard: Int, atBottomOf stack: [Int]) -> [Int] {
    var newStack = stack
    if validation(at: 0, in: stack) && newCard >= 0 {
        newStack.insert(newCard, at: 0)
    }
    return newStack
}

func removeBottomCard(_ stack: [Int]) -> [Int] {
    var newStack = stack
    if validation(at: 0, in: stack) {
        newStack.removeFirst()
    }
    return newStack
}

func checkSizeOfStack(_ stack: [Int], _ size: Int) -> Bool {
    return size == stack.count
}

func evenCardCount(_ stack: [Int]) -> Int {
    let evenNumbers = stack.filter { $0 % 2 == 0 }
    return evenNumbers.count
}