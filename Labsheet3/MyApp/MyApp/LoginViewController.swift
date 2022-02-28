//
//  LoginViewController.swift
//  MyApp
//
//  Created by Interactive Media on 2/26/22.
//  Copyright © 2022 Interactive Media. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var txtUserName: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnLoginClick(_ sender: Any) {
        if (txtUserName.text != "") {
            if(txtPassword.text != "") {
                
                self.performSegue(withIdentifier: "goToTable", sender: self)
                
                
            } else {
                let alertController = UIAlertController(title: "LOGIN", message: "Login Credentials Wrong!", preferredStyle:.alert)

                alertController.addAction(UIAlertAction(title: "OK", style: .default)
                          { action -> Void in
                            // Put your code here
                          })
                self.present(alertController, animated: true, completion: nil)
            }
        } else {
            let alertController = UIAlertController(title: "LOGIN", message: "Login Credentials Empty!", preferredStyle:.alert)

            alertController.addAction(UIAlertAction(title: "OK", style: .default)
                      { action -> Void in
                        // Put your code here
                      })
            self.present(alertController, animated: true, completion: nil)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
