//3번 과제
class Calculator {
    var addOperation = Add()
    var subtractOperation = Subtract()
    var multiplyOperation = Multiply()
    var divideOperation = Divide()
        
    func calculate(operator: String, firstNum: Double, secondNum: Double) -> Double {
        switch `operator` {
        case "add":
            return addOperation.operate(firstNum: firstNum, secondNum: secondNum)
        case "subtract":
            return subtractOperation.operate(firstNum: firstNum, secondNum: secondNum)
        case "multiply":
            return multiplyOperation.operate(firstNum: firstNum, secondNum: secondNum)
        case "divide":
            return divideOperation.operate(firstNum: firstNum, secondNum: secondNum)
        default:
            return 0
        }
    }
}

class Add {
    func operate(firstNum: Double, secondNum: Double) -> Double {
        return firstNum + secondNum
    }
}

class Subtract {
    func operate(firstNum: Double, secondNum: Double) -> Double {
        return firstNum - secondNum
    }
}

class Multiply {
    func operate(firstNum: Double, secondNum: Double) -> Double {
        return firstNum * secondNum
    }
}

class Divide {
    func operate(firstNum: Double, secondNum: Double) -> Double {
        return firstNum / secondNum
    }
}

let calculator = Calculator()

let addResult = calculator.calculate(operator: "add", firstNum: 3, secondNum: 2)
print("더하기: \(addResult)")

let subtractResult = calculator.calculate(operator: "subtract", firstNum: 10, secondNum: 5)
print("빼기: \(subtractResult)")

let multiplyResult = calculator.calculate(operator: "multiply", firstNum: 5, secondNum: 5)
print("곱하기: \(multiplyResult)")

let divideResult = calculator.calculate(operator: "divide", firstNum: 12, secondNum: 4)
print("나누기: \(divideResult)")
