//
//  ViewController.swift
//  HesapMakinesi
//
//  Created by Berke Özgüder on 24.09.2024.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var calculatorWorkings: UITextField!
    
    @IBOutlet weak var calculatorResults: UITextField!
    
    var workings: String = ""
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        clearAll()
        calculatorResults.isUserInteractionEnabled = false
        calculatorWorkings.isUserInteractionEnabled = false
    }
    
    func clearAll()
    {
        workings = ""
        calculatorWorkings.text = ""
        calculatorResults.text = ""
    }

    @IBAction func equalsTap(_ sender: Any)
    {
            if let workingsText = calculatorWorkings.text {
                let expression = NSExpression(format: workingsText)
                let result = expression.expressionValue(with: nil, context: nil) as! Double
                calculatorResults.text = formatResult(result: result)
            }
    }
    
    func formatResult(result: Double) -> String
    {
        if result.truncatingRemainder(dividingBy: 1) == 0 {
            return String(format: "%.0f", result)
        } else {
            return String(format: "%.2f", result)
        }
    }

    
    
    @IBAction func allClearTap(_ sender: Any)
    {
        clearAll()
    }
    
    
    func addToWorkings(value: String)
    {
        workings += value
        calculatorWorkings.text = workings
    }
    
    @IBAction func plusTap(_ sender: Any)
    {
        addToWorkings(value: "+")
    }
    
    @IBAction func decimalTap(_ sender: Any)
    {
        addToWorkings(value: ".")
    }
    
    @IBAction func zeroTap(_ sender: Any)
    {
        addToWorkings(value: "0")
    }
    
    @IBAction func oneTap(_ sender: Any)
    {
        addToWorkings(value: "1")
    }
    
    @IBAction func twoTap(_ sender: Any)
    {
        addToWorkings(value: "2")
    }
    
    @IBAction func threeTap(_ sender: Any)
    {
        addToWorkings(value: "3")
    }
    
    @IBAction func fourTap(_ sender: Any)
    {
        addToWorkings(value: "4")
    }
    
    @IBAction func fiveTap(_ sender: Any)
    {
        addToWorkings(value: "5")
    }
    
    @IBAction func sixTap(_ sender: Any)
    {
        addToWorkings(value: "6")
    }
    
    @IBAction func sevenTap(_ sender: Any)
    {
        addToWorkings(value: "7")
    }
    
    @IBAction func eightTap(_ sender: Any)
    {
        addToWorkings(value: "8")
    }
    
    @IBAction func nineTap(_ sender: Any)
    {
        addToWorkings(value: "9")
    }
}
