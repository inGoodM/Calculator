//
//  ViewController.swift
//  Calculator
//
//  Created by inGM on 24.05.2022.
//

import UIKit

class ViewController: UIViewController {

    var numbers: String = ""
    var result: Float = 0.0
    
    @IBOutlet weak var resultLable: UILabel!
    @IBOutlet weak var realTimeTipping: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLable.text = ""
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        numbers = sender.titleLabel?.text! ?? ""
        
        switch numbers {
        case "0": makeConcatetion(numbers)
        case "1": makeConcatetion(numbers)
        case "2": makeConcatetion(numbers)
        case "3": makeConcatetion(numbers)
        case "4": makeConcatetion(numbers)
        case "5": makeConcatetion(numbers)
        case "6": makeConcatetion(numbers)
        case "7": makeConcatetion(numbers)
        case "8": makeConcatetion(numbers)
        case "9": makeConcatetion(numbers)
        case ".": makeConcatetion(numbers)
        case "AC": clear()
        case "+/-": changePolar()
        case "%": findPercent()
        case "÷": division()
        case "×": multy()
        case "-": minusing()
        case "+": plussing()
        case "=": equalling()
        default: break
        }
        
    }
    
    func makeConcatetion(_ senderText: String) {
        realTimeTipping.text! += senderText
    }
    func clear() {
        
    }
    func changePolar () {
        
    }
    func findPercent() {
        
    }
    func division () {
        
    }
    func multy() {
        
    }
    func minusing () {
        
    }
    func plussing () {
        
    }
    func equalling () {
        
    }
}

