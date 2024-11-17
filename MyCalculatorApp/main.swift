//
//  main.swift
//  MyCalculatorApp
//
//  Created by Juan Cruz on 16/11/24.
//

import Foundation

var userElection: Bool = false
repeat {
    var FirstNum: Int = 0
    var SecondNum: Int = 0
    print("Bienbenido!!")
    print("Ingrese el primer numero:")
    if let imput = readLine(), let converted = Int(imput){
        FirstNum = converted
        print("Primer numero ingresado correctamente:  \(FirstNum)")
    }else{
        print("opcion invalida!")
    }
    print("Ingrese el segundo numero:")
    if let imput = readLine(), let converted = Int(imput){
        SecondNum = converted
        print("Segundo numero ingresado correctamente:  \(SecondNum)")
    }else{
        print("opcion invalida!")
    }

    print("Ingresa la operacion que quieras realizar: +, -, *, /")
    let Operation = readLine()

    switch Operation {
    case "+":
        print("El resultado es:")
        print(suma(FirstNum, SecondNum))
    case "-":
        print("El resultado es:")
        print(resta(FirstNum, SecondNum))
    case "*":
        print("El resultado es:")
        print(multiplicacion(FirstNum, SecondNum))
    case "/":
        print(division(FirstNum, SecondNum))
    default:
        print("Operacion no valida")
    }
    
    print("Quieres realizar otra operacion?")
    if let imput = readLine(strippingNewline: true){
        if imput.lowercased() == "si"{
            userElection = true
        }else{
            userElection = false
        }
    }
    
} while (userElection != false)


func suma(_ a: Int, _ b: Int) -> Int {
    return a + b
}
func resta(_ a: Int, _ b: Int) -> Int {
    return a - b
}
func multiplicacion(_ a: Int, _ b: Int) -> Int {
    return a * b
}
func division(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        print("valor incorrecto, No se puede dividir por 0!")
        print("ingresa un nuevo valor")
        var newB: Int = 0
        if let imput = readLine(strippingNewline: true), let converted = Int(imput){
            newB = converted
            print("Segundo numero ingresado correctamente:  \(newB)")
        }else {
            print("opcion invalida!")
        }
        print("El resultado es:")
        return division(a, newB)
    }else {
        print("El resultado es:")
        return a / b
    }
}
