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
    
    func isValidLogin() -> Bool {
        let loginRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let loginPred = NSPredicate(format:"SELF MATCHES %@", loginRegEx)
        return loginPred.evaluate(with: login)
    }
    
    func isValidPassword() -> Bool {
        func isLength() -> Bool {
            return password.count > 5
        }
        func isUppercase() -> Bool {
            for char in password { if char.isUppercase { return true } }
            return false
        }
        func isLowercase() -> Bool {
            for char in password { if char.isLowercase { return true } }
            return false
        }
        func isNumber() -> Bool {
            for char in password { if char.isNumber { return true } }
            return false
        }

        return isLength() && isUppercase() && isLowercase() && isNumber()
    }
    
    if isValidLogin() { print("YES LOGIN")} else { print("NO LOGIN")}
    if isValidPassword() { print("YES PASSWORD")} else { print("NO PASSWORD")}
    
    return ""
}
