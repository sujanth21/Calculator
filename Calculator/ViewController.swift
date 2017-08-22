//
//  ViewController.swift
//  Calculator
//
//  Created by Sujanth Sebamalaithasan on 22/8/17.
//  Copyright © 2017 Sujanth Sebamalaithasan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var isFirstDigit = true
    var operation1: Double = 0
    var operation2 = "="
    
    var displayValue: Double {
        get {
            return NumberFormatter().number(from: label.text!)!.doubleValue
        }
        set {
            label.text = String(format: "%2.0f", newValue)
            isFirstDigit = true
            operation2 = "="
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func digitBtnPressed(_ sender: AnyObject) {
        
        let digit = sender.currentTitle!
        
        label.text = isFirstDigit ? digit : label.text! + digit!
        isFirstDigit = false
    }
    
    @IBAction func cancelBtnPressed(_ sender: Any) {
    }
    
    
    @IBAction func calculateBtnPressed(_ sender: Any) {
    }
    
    @IBAction func operationBtnPressed(_ sender: Any) {
    }
    
    
}

