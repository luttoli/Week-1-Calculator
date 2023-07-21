//1번 과제
class Calculator {
    func calculate(operator: String, firstNum: Double, secondNum: Double) -> Double {
        switch `operator` {
        case "add":
            return firstNum + secondNum
        case "subtract":
            return firstNum - secondNum
        case "multiply":
            return firstNum * secondNum
        case "divide":
            return firstNum / secondNum
        case "remainder": // 2번 과제
            return Double(Int(firstNum) % Int(secondNum))
        default:
            return 0
        }
    }
}

let calculator = Calculator()

let addResult = calculator.calculate(operator: "add", firstNum: 1000, secondNum: 1)
print("더하기: \(addResult)")

let subtractResult = calculator.calculate(operator: "subtract", firstNum: 3, secondNum: 1)
print("빼기: \(subtractResult)")

let multiplyResult = calculator.calculate(operator: "multiply", firstNum: 232, secondNum: 333)
print("곱하기: \(multiplyResult)")

let divideResult = calculator.calculate(operator: "divide", firstNum: 433, secondNum: 22)
print("나누기: \(divideResult)")

let remainderResult = calculator.calculate(operator: "remainder", firstNum: 111, secondNum: 25)
print("나머지: \(remainderResult)")
