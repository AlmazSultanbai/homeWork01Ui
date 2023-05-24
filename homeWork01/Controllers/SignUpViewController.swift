//
//  SecondViewController.swift
//  homeWork01
//
//  Created by Sultanbai Almaz on 17/5/23.
//

import UIKit

class SignUpViewController: UIViewController {


    @IBOutlet weak var nameTF: UITextField!

    @IBOutlet weak var numberTF: UITextField!

    @IBOutlet weak var emailTF: UITextField!

    @IBOutlet weak var userNameTF: UITextField!

    @IBOutlet weak var passwordTF: UITextField!

    @IBOutlet weak var confirmPassword: UITextField!

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    @IBAction func eye1Button(_ sender: UIButton) {

        if passwordTF.isSecureTextEntry == true {

            passwordTF.isSecureTextEntry = false
            sender.setImage(UIImage(systemName: "eye"), for: .normal)
        } else {
            passwordTF.isSecureTextEntry = true
            sender.setImage(UIImage(systemName: "eye.slash"), for: .normal)

        }

    }
    @IBAction func eye2Button(_ sender: UIButton) {

        if confirmPassword.isSecureTextEntry == true {

            confirmPassword.isSecureTextEntry = false
            sender.setImage(UIImage(systemName: "eye"), for: .normal)
        } else {
            confirmPassword.isSecureTextEntry = true
            sender.setImage(UIImage(systemName: "eye.slash"), for: .normal)
        }
        
    }


    @IBAction func signInBack(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func signUp(_ sender: UIButton) {
        let name = enterApproved2(textField: nameTF)
        let mobNumber = enterApproved2(textField: numberTF)
        let email2 = enterApproved2(textField: emailTF)
        let userName = enterApproved2(textField: userNameTF)
        let pass2 = enterApproved2(textField: passwordTF)
        let pass1 = enterApproved2(textField: confirmPassword)
        if email2 && pass2 && name && mobNumber && pass1 && userName {
            if passwordTF.text != confirmPassword.text {
                label.isHidden = false
                
            } else {
                label.isHidden = true
                performSegue(withIdentifier: "success2", sender: self)
                    }
            }
    }
    
    private func enterApproved2(textField: UITextField ) -> Bool {
        if textField.text?.isEmpty ?? true {
            textField.placeholder = "Please fill the field"
            textField.layer.borderWidth = 1
            textField.layer.borderColor = UIColor.red.cgColor
            return false
        } else {
            textField.layer.borderWidth = 0
            return true
        }
        
        
    }
}
