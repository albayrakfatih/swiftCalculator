//
//  ViewController.swift
//  Calculator
//
//  
//

import UIKit

class ViewController: UIViewController {
    
    var resultScreenStartNumber:Double = 0
    
    var number1 : Double = 0
    var number2 : Double = 0
    var operation : Int = 0
    var isProcess : Bool = false
    
    
    @IBAction func OperationButtons(_ sender: UIButton) {
        
        if resultScreen.text != "" && sender.tag != 10 && sender.tag != 17
        {
            number1 = Double(resultScreen.text!)!
            if sender.tag == 16
            {
            resultScreen.text = "+"
            }
            operation = sender.tag
            isProcess = true
        }
        else if sender.tag == 10
        {
            number1 = 0
            number2 = 0
            operation = 0
            resultScreen.text = ""
        }
        else if sender.tag == 17
        {
            if operation == 16{
                resultScreen.text = String(number1 + number2)
            }
        }
        
        
        
    }
    
    @IBOutlet weak var resultScreen: UILabel!
    @IBAction func numbers(_ sender: UIButton) {
        
        if isProcess == true {
            resultScreen.text = String(sender.tag)
            number2 = Double(resultScreen.text!)!
            isProcess = false
        }
        else{
            resultScreen.text = resultScreen.text! + String(sender.tag)
            number2 = Double(resultScreen.text!)!
        }
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

