//
//  FourthViewController.swift
//  homeWork01
//
//  Created by Sultanbai Almaz on 17/5/23.
//

import UIKit

class NewPasswordViewController: UIViewController {

    @IBOutlet weak var passCheck: UILabel!
    
    @IBOutlet weak var confirmPassword: UITextField!
    @IBOutlet weak var passTF: UITextField!
    
    var label: String?
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    
    @IBAction func eye2(_ sender: UIButton) {
        if confirmPassword.isSecureTextEntry == true {
            
            confirmPassword.isSecureTextEntry = false
            sender.setImage(UIImage(systemName: "eye"), for: .normal)
        } else {
            confirmPassword.isSecureTextEntry = true
            sender.setImage(UIImage(systemName: "eye.slash"), for: .normal)
        }
    }
    
@IBAction func eye(_ sender: UIButton) {
        
        if passTF.isSecureTextEntry == true {
            
            passTF.isSecureTextEntry = false
            sender.setImage(UIImage(systemName: "eye"), for: .normal)
        } else {
            passTF.isSecureTextEntry = true
            sender.setImage(UIImage(systemName: "eye.slash"), for: .normal)
        }
        
    }
    @IBAction func buttonPressed(_ sender: Any) {
        let pass = enterApproved(textField: passTF)
        let conf = enterApproved(textField:  confirmPassword)
        if pass && conf {
            if passTF.text != confirmPassword.text {
                passCheck.isHidden = false
            } else {
                passCheck.isHidden = true
                performSegue(withIdentifier: "go", sender: self)
            }
        }
    }
    
    private func enterApproved(textField: UITextField) -> Bool {
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
