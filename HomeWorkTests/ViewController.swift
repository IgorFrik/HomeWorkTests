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
        guard let login = loginTextField.text else { return }
        guard let password = passwordTextField.text else { return }
        let enter = loginModel(login: login, password: password)
        
        let alert = UIAlertController(title: enter.0 ? "Успех" : "Ошибка", message: enter.1, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        if loginTextField.hasText && passwordTextField.hasText { enterButton.isEnabled = true } else { enterButton.isEnabled = false }
    }
}
