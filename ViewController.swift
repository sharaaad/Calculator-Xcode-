//
//  ViewController.swift
//  CalculatorAssignment
//
//  Created by admin on 27/02/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numberDisplay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var newOperation=true
    func addNumberToInput(number:String){
        var textFigure =
            String(numberDisplay.text!)
        if newOperation {
            textFigure = ""
            newOperation = false
            
        }
        textFigure = textFigure + number
        numberDisplay.text = textFigure
        
}
    
    
    @IBAction func zeroButton(_ sender: Any) {
        addNumberToInput(number: "0")
    }
    
    
    @IBAction func decimalButton(_ sender: Any) {
        addNumberToInput(number: ".")
    }
    
    
    @IBAction func oneButton(_ sender: Any) {
        addNumberToInput(number: "1")
    }
    
    @IBAction func twoButton(_ sender: Any) {
        addNumberToInput(number: "2")
        
    }
    
    @IBAction func threeButton(_ sender: Any) {
        addNumberToInput(number: "3")
        
    }
    
    
    @IBAction func fourButton(_ sender: Any) {
        addNumberToInput(number: "4")
        
    }
    
    @IBAction func fiveButton(_ sender: Any) {
        addNumberToInput(number: "5")
        
    }
    
    @IBAction func sixButton(_ sender: Any) {
        addNumberToInput(number: "6")
        
    }
    
    
    @IBAction func sevenButton(_ sender: Any) {
        addNumberToInput(number: "7")
        
    }
    
    
    @IBAction func eightButton(_ sender: Any) {
        addNumberToInput(number: "8")
        
    }
    
    
    @IBAction func nineButton(_ sender: Any) {
        addNumberToInput(number: "9")
        
    }
    
    var operation = "+"
    var number1:Double?
    @IBAction func multipleTap(_ sender: Any) {
        
        operation = "*"
        number1 = Double(numberDisplay.text!)
        newOperation = true
        
    }
    
    @IBAction func divisionTap(_ sender: Any) {
        operation = "/"
        number1 = Double(numberDisplay.text!)
        newOperation = true
        
    }
    
    @IBAction func subtractionTap(_ sender: Any) {
        operation = "-"
        number1 = Double(numberDisplay.text!)
        newOperation = true
    }
    
    @IBAction func additionTap(_ sender: Any) {
        operation = "+"
        number1 = Double(numberDisplay.text!)
        newOperation = true
    }
    
    
    @IBAction func clearAll(_ sender: Any) {
        numberDisplay.text = "0"
        newOperation = true
    }
    
    
    
    
    @IBAction func percentTap(_ sender: Any) {
        var number1 =
            Double( numberDisplay.text!)
        
        
        number1 = number1!/100.0
        numberDisplay.text = String(number1!)
        newOperation = true
    }
    
    
    
    @IBAction func equalTap(_ sender: Any) {
        let number2 =
            Double( numberDisplay.text!)
        var results:Double?
        switch operation {
        case "*":
            results = number1! * number2!
        case "/":
            results = number1! / number2!
        case "-":
            results = number1! - number2!
        case "+":
            results = number1! + number2!
        
        default:
            results = 0.0
            
        }
        numberDisplay.text =  String(results!)
        newOperation = true
    
        
    }
    
    
    
    
    
    
}

