//
//  ViewController.swift
//  homeWork01
//
//  Created by Sultanbai Almaz on 12/5/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var emailUnderline: UIView!
    
    
    @IBOutlet weak var passwordUnderline: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func eyeButton(_ sender: UIButton) {
        
        if passwordText.isSecureTextEntry == true {
            
            passwordText.isSecureTextEntry = false
            sender.setImage(UIImage(systemName: "eye"), for: .normal)
        } else {
            passwordText.isSecureTextEntry = true
            sender.setImage(UIImage(systemName: "eye.slash"), for: .normal)
        }
        
    }
    
    @IBAction func rememberButton(_ sender: UIButton) {
        let image = UIImage(systemName: "square")
        let image2 = UIImage(systemName: "checkmark.square")
        let senderImage = sender.imageView?.image
        if senderImage == image {
            sender.setImage(image2, for: .normal)
        }else{
            sender.setImage(image, for: .normal)
        }
    }
    
    @IBAction func signUpButton1(_ sender: UIButton) {
        performSegue(withIdentifier: "goToSignUp", sender: self)
    }
    
    @IBAction func signInButton(_ sender: UIButton) {
        let email = enterApproved(textField: emailText, underlin: emailUnderline)
        let pass = enterApproved(textField: passwordText, underlin: passwordUnderline)
        if email && pass {
            performSegue(withIdentifier: "success", sender: self)
        }
    }
    private func enterApproved(textField: UITextField, underlin: UIView) -> Bool {
        if textField.text?.isEmpty ?? true {
            textField.placeholder = "Please fill the field"
            textField.layer.borderWidth = 1
            textField.layer.borderColor = UIColor.red.cgColor
            //underlin.backgroundColor = UIColor.red
            return false
        } else {
            //underlin.backgroundColor = #colorLiteral(red: 0.8823529412, green: 0.8901960784, blue: 0.9098039216, alpha: 1)
            textField.layer.borderWidth = 0
            return true
        }
        
    }
    
}



