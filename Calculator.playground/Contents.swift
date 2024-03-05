import Foundation

class Calculator {
    let add = AddOperation()
    let sub = SubstractOperation()
    let mul = MultiplyOperation()
    let div = DivideOperation()

    func calculate(operation: String, firstNumber: Double, secondNumber: Double) -> Double {
        switch operation {
        case "+":
            return add.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        case "-":
            return sub.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        case "*":
            return mul.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        case "/":
            return div.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        default:
            return 0
        }
    }
}

class AddOperation {
    func operate(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber + secondNumber
    }
}

class SubstractOperation {
    func operate(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber - secondNumber
    }
}

class MultiplyOperation {
    func operate(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber * secondNumber
    }
}

class DivideOperation {
    func operate(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber / secondNumber
    }
}

let calculator = Calculator()

let addResult = calculator.calculate(operation: "+", firstNumber: 1, secondNumber: 2)
let subtractResult = calculator.calculate(operation: "-", firstNumber: 12, secondNumber: 2)
let multiplyResult = calculator.calculate(operation: "*", firstNumber: 10, secondNumber: 5)
let divideResult = calculator.calculate(operation: "/", firstNumber: 9, secondNumber: 2)

print("addResult : \(addResult)")
print("subtractResult : \(subtractResult)")
print("multiplyResult : \(multiplyResult)")
print("divideResult : \(divideResult)")
