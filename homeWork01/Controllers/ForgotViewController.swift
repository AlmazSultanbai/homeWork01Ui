//
//  ThirdViewController.swift
//  homeWork01
//
//  Created by Sultanbai Almaz on 17/5/23.
//

import UIKit

class ForgotViewController: UIViewController {
    
    @IBOutlet weak var idTF: UITextField!
    @IBOutlet weak var numberTF: UITextField!
    
    
    @IBOutlet var buttons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        buttonBorder()
    }
    
    private func buttonBorder () {
        
        for i in buttons {
            i.layer.borderWidth = 1
            i.layer.cornerRadius = 10       }
    }

    @IBAction func buttonIsTapped(_ sender: Any) {
        
        if numberTF.text?.isEmpty == false {
            //navigationController?.pushViewController(NewPasswordViewController(), animated: true)
            performSegue(withIdentifier: "new", sender: self)
            numberTF.layer.borderWidth = 0
        } else {
            numberTF.placeholder = "Fill the field"
            numberTF.layer.borderWidth = 1
            numberTF.layer.borderColor = UIColor.red.cgColor
            
        }
    }
    
    
    @IBAction func getOTPButtonTapped(_ sender: UIButton) {
        let idTF = idTF
        if idTF?.text?.isEmpty == false {
            numberTF.isEnabled = true
            idTF?.layer.borderWidth = 0
        } else {
            idTF?.placeholder = "Fill the field"
            idTF?.layer.borderWidth = 1
            idTF?.layer.borderColor = UIColor.red.cgColor
        }
    }
    
}
