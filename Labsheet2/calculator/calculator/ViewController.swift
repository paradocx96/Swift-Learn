//
//  ViewController.swift
//  calculator
//
//  Created by m1 on 24/02/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var num1: UITextField!
    
    @IBOutlet weak var num2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //hello
    }

    @IBAction func sum(_ sender: Any) {
        if let num1Safe = num1.text,
           let num2Safe = num2.text {
            if let n1 = Int(num1Safe),
               let n2 = Int(num2Safe) {
                var result = n1 + n2
                showAlert(text: String(result))
            }
        }
    }
    
    @IBAction func substract(_ sender: Any) {
        if let num1Safe = num1.text,
           let num2Safe = num2.text {
            if let n1 = Int(num1Safe),
               let n2 = Int(num2Safe) {
                var result = 0
                if n2 >= n1 {
                    result = n2 - n1
                } else {
                    result = n1 - n2
                }
                showAlert(text: String(result))
            }
        }
    }
    
    @IBAction func multify(_ sender: Any) {
        if let num1Safe = num1.text,
           let num2Safe = num2.text {
            if let n1 = Int(num1Safe),
               let n2 = Int(num2Safe) {
                var result = n1 * n2
                showAlert(text: String(result))
            }
        }
    }
    
    
    @IBAction func divide(_ sender: Any) {
        if let num1Safe = num1.text,
           let num2Safe = num2.text {
            if let n1 = Int(num1Safe),
               let n2 = Int(num2Safe) {
                var result = 0
                if n2 >= n1 {
                    result = n2 / n1
                } else {
                    result = n1 / n2
                }
                showAlert(text: String(result))
            }
        }
    }
    
    func showAlert(text: String){
        print(text)
        
        let alert = UIAlertController(title: "Result of Calculation", message: "Result is \(text)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
        NSLog("The \"OK\" alert occured.")
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    
}

