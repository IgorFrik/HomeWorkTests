//
//  LoginModel.swift
//  HomeWorkTests
//
//  Created by Игорь Фрик on 18.01.2023.
//

import Foundation

func loginModel(login: String, password: String) -> String{
    let login = login
    let password = password
    
    func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    
    return ""
}
