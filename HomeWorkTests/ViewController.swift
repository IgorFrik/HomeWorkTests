//
//  ViewController.swift
//  HomeWorkTests
//
//  Created by Игорь Фрик on 18.01.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var enterButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginTextField.delegate = self
        passwordTextField.delegate = self
    }

    @IBAction func pressEnterButton(_ sender: Any) {
        loginModel(login: loginTextField.text!, password: passwordTextField.text!)
        
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        if loginTextField.hasText && passwordTextField.hasText { enterButton.isEnabled = true } else { enterButton.isEnabled = false }
    }
}
