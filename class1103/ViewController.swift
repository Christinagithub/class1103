//
//  ViewController.swift
//  class1103
//
//  Created by s20171105407 on 2018/11/3.
//  Copyright © 2018 s20171105407. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var result_1: UITextField!
    
    @IBOutlet weak var result_2: UITextField!
    
    @IBOutlet weak var result: UILabel!
    var re = 0
    var plus = 0
    var judge = 0
    var number = 0
    @IBAction func number0(_ sender: Any) {
        if re == 1{
            result.text = "0"
        }else{
            result.text = result.text! + "0"
        }
    }
    
    @IBAction func number1(_ sender: Any) {
        if re == 1{
            result.text = "1"
        }else{
            result.text = result.text! + "1"
        }
    }
    
    @IBAction func number2(_ sender: Any) {
        if re == 1{
            result.text = "2"
        }else{
            result.text = result.text! + "2"
        }
    }
    
    @IBAction func number3(_ sender: Any) {
        if re == 1{
            result.text = "3"
        }else{
            result.text = result.text! + "3"
        }
    }
    
    @IBAction func number4(_ sender: Any) {
        if re == 1{
            result.text = "4"
        }else{
            result.text = result.text! + "4"
        }
    }
    
    @IBAction func number5(_ sender: Any) {
        if re == 1{
            result.text = "5"
        }else{
            result.text = result.text! + "5"
        }
    }
    
    @IBAction func number6(_ sender: Any) {
        if re == 1{
            result.text = "6"
        }else{
            result.text = result.text! + "6"
        }
    }
    
    @IBAction func number7(_ sender: Any) {
        if re == 1{
            result.text = "7"
        }else{
            result.text = result.text! + "7"
        }
    }
    
    @IBAction func number8(_ sender: Any) {
        if re == 1{
            result.text = "8"
        }else{
            result.text = result.text! + "8"
        }
    }
    
    @IBAction func number9(_ sender: Any) {
        if re == 1{
            result.text = "9"
        }else{
            result.text = result.text! + "9"
        }
    }
    
    @IBAction func bottonAdd(_ sender: Any) {
        if plus==1{
            let a = Double(result_1.text!)!
            let b = Double(result.text!)!
            let c = a + b
            result_1.text = String(c)
            result.text = ""
            number = 2
            re = 1
        }else{
            if result.text == ""{
                result.text = "0"
            }else {
                let x = Double(result.text!)!
                result_1.text = String(x)
                result.text = ""
                number = 2
                re = 0
            }
        }
    }
    
    @IBAction func bottonMinus(_ sender: Any) {
        if plus == 1{
            let a = Double(result.text!)!
            let b = Double(result.text!)!
            let c = a - b
            result_1.text = String(c)
            result.text = ""
            number = 1
            re = 1
        }else{
            if result.text == ""{
                result.text = "0"
            }else{
                let x = Double(result.text!)!
                result_1.text = String(x)
                result.text = ""
                number = 1
                re = 1
            }
        }
    }
    @IBAction func bottonMultiply(_ sender: Any) {
        if plus == 1{
            let a = Double(result.text!)!
            let b = Double(result.text!)!
            let c = a * b
            result_1.text = String(c)
            result.text = ""
            number = 3
            re = 1
        }else{
            if result.text == ""{
                result.text = "0"
            }else{
                let x = Double(result.text!)!
                result_1.text = String(x)
                result.text = ""
                number = 3
                re = 0
                plus = 1
            }
        }
    }
    
    @IBAction func bottonDivide(_ sender: Any) {
        if plus == 1{
            let a = Double(result.text!)!
            let b = Double(result.text!)!
            let c = a / b
            result_1.text = String(c)
            result.text = ""
            number = 4
            re = 1
        }else{
            if result.text == ""{
                result.text = "0"
            }else{
                let x = Double(result.text!)!
                result_1.text = String(x)
                result.text = ""
                number = 4
                re = 0
                plus = 1
            }
        }
    }
    
    @IBAction func bottonEqual(_ sender: Any) {
        var d:Double
        var c:Double
        let x = Double(result_1.text!)!
        c = (result.text!as NSString).doubleValue
        if number == 1{
            d = x - c
        }else if number == 2{
            d = x + c
        }else if number == 3{
            d = x * c
        }else if number == 4{
            d = x / (c)
        }else{
            d = 1000
        }
        result_2.text = String(c)
        if judge == 1{
            result.text = String(format:"%f",d)
        }else{
            result.text = String(format:"%.0f",d)
        }
        re = 1
        judge = 0
        plus = 0
    }
    
    @IBAction func bottonClear(_ sender: Any) {result.text = ""
        re = 0
    }
    
    @IBAction func bottonChange(_ sender: Any) {
        let count = Double(result.text!)!
        let count2 = -count
        result.text = String(count2)
        re = 0
    }
    
    @IBAction func bottonPercent(_ sender: Any) {
        let count = Double(result.text!)!
        let count2 = count*0.01
        result.text = String(count2)
        re = 0
    }
    @IBAction func bottonDot(_ sender: Any) {
        result.text = result.text! + "."
        judge = 1
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

