//
//  LoginViewController.swift
//  Parstagram
//
//  Created by Yuhui Chen on 5/12/19.
//  Copyright © 2019 Yuhui Chen. All rights reserved.
//

import UIKit
import Parse

class LoginViewController: UIViewController {
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onLogin(_ sender: Any) {
        let name = username.text!
        let psword = password.text!
        
        PFUser.logInWithUsername(inBackground: name, password: psword)
        { (user, error) in
            if user != nil {
                self.performSegue(withIdentifier: "loginPage", sender: nil)
            }
            else {
                print("Error: \(error?.localizedDescription)")
            }
        }
    }
    
    @IBAction func onSignUp(_ sender: Any) {
        let user = PFUser()
        user.username = username.text
        user.password = password.text
        user.signUpInBackground { (success, error) in
            if success {
                self.performSegue(withIdentifier: "loginPage", sender: nil)
            }
            else {
                print("Error: \(error?.localizedDescription)")
            }
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
