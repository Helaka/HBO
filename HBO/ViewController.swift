//
//  ViewController.swift
//  HBO
//
//  Created by Minu Jayakody on 1/15/20.
//  Copyright © 2020 Minu Jayakody. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITextFieldDelegate {

    @IBOutlet var txtfieldEmail: UITextField!
    @IBOutlet var txtfieldPassword: UITextField!
    @IBOutlet var signinButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        Sign In Button
        signinButton.backgroundColor = UIColor.blue
        signinButton.layer.cornerRadius = 10.0
        signinButton.setTitleColor(UIColor.white, for: .normal)
        
//        Password Text Field
        
        txtfieldPassword.text = "Password"
        txtfieldPassword.textColor = UIColor.lightGray
        txtfieldPassword.font = UIFont(name: "verdana", size: 13)
        txtfieldPassword.returnKeyType = .done
        
        txtfieldPassword.delegate = self
        
//        Email Text Field
        
        txtfieldEmail.text = "Email"
        txtfieldEmail.textColor = UIColor.lightGray
        txtfieldEmail.font = UIFont(name: "verdana", size: 13)
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField.text == "Password"{
            textField.text = ""
            textField.textColor = UIColor.black
            textField.font = UIFont(name: "verdana", size: 13.0)
            
        }
        
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString text: String) -> Bool {
        
        if text == "\n"{
            textField.resignFirstResponder()
        }
        
        return true
    }

    
}

