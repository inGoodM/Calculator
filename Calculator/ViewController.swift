//
//  ViewController.swift
//  Calculator
//
//  Created by inGM on 24.05.2022.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: variable and constant block
    
    let signButtonsArray = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
    var firstOperand: Double = 0.0
    var secondOperand: Double = 0.0
    var signOperator = ""
    var result: Double {
        get {
                return Double(displayResult.text!)!
        }
        set {
            let str = String(newValue)
            let valueArray = str.components(separatedBy: ".")
            if valueArray[1] == "0" {
                displayResult.text! = "\(valueArray[0])"
            } else {
                displayResult.text! = "\(newValue)"
                isTyping = false
            }
        }
    }
    var isDotContain = false
    var isTyping = false
    
    @IBOutlet weak var displayResult: UILabel!
    
    //MARK: Add sign to display
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let sign = sender.titleLabel?.text!
        switch sign {
        case sign where isTyping == false:
            displayResult.text! = ""
            displayResult.text! += sign!
            isTyping = true
        default:
            displayResult.text! += sign!
        }
    }
    
    //MARK: Clear button functionality
    
    @IBAction func clearButtonPressed(_ sender: UIButton) {
        isTyping = false
        isDotContain = false
        displayResult.text! = "0"
        firstOperand = 0.0
        secondOperand = 0.0
    }
    
    //MARK: Operators button functionality
    
    @IBAction func operatorButtonPressed(_ sender: UIButton) {
        firstOperand = Double(displayResult.text!) ?? 0.0
        signOperator = sender.titleLabel?.text! ?? ""
        displayResult.text! = ""
        isDotContain = false
        isTyping = false
    }
    
    //MARK: Equalating button functionality
    
    @IBAction func equalButtonPressed(_ sender: UIButton) {
        secondOperand = Double(displayResult.text!) ?? 0.0
        isTyping = false
        
        switch signOperator {
        case "÷" where secondOperand != 0:
            result = firstOperand / secondOperand
        case "×":
            do { result = firstOperand * secondOperand }
        case "-":
            do { result = firstOperand - secondOperand }
        case "+":
            do { result = firstOperand + secondOperand }
        default:
            displayResult.text! = "division by zero"
        }
        displayResult.text! = "\(result)"
        
    }
    //MARK: Dot button functionality
    
    @IBAction func dotButtonPressed(_ sender: UIButton) {
        if isTyping && !isDotContain {
            displayResult.text! = displayResult.text! + "."
        } else if !isTyping && !isDotContain {
            displayResult.text! = "0."
        }
    }
    
    //MARK: plus-minus button
    
    @IBAction func plusMinusButton(_ sender: UIButton) {
        result = -result
    }
    
    
}

