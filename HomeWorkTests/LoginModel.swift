//
//  LoginModel.swift
//  HomeWorkTests
//
//  Created by Игорь Фрик on 18.01.2023.
//

import Foundation

func loginModel(login: String, password: String) -> (Bool, String){
    let login = login
    let password = password
    var error = ""
    
    func isValidLogin() -> (Bool, String) {
        let loginRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let loginPred = NSPredicate(format:"SELF MATCHES %@", loginRegEx)
        return loginPred.evaluate(with: login) ? (true, "") : (false, "Логин должен быть почтой")
    }
    
    func isValidPassword() -> (Bool, String) {
        var passwordErrors = ""
        func isLength() -> (Bool, String) {
            return password.count > 5 ? (true, "") : (false, "Длина пароля меньше 6 символов")
        }
        func isUppercase() -> (Bool, String) {
            for char in password { if char.isUppercase { return (true, "") } }
            return (false, "Как минимум одна заглавная в пароле")
        }
        func isLowercase() -> (Bool, String) {
            for char in password { if char.isLowercase { return (true, "") } }
            return (false, "Как минимум одна строчная в пароле")
        }
        func isNumber() -> (Bool, String) {
            for char in password { if char.isNumber { return (true, "") } }
            return (false, "Как минимум одна цифра в пароле")
        }
        
        let array = [isLength(), isUppercase(), isLowercase(), isNumber()]
        for i in array { passwordErrors = i.0 ? passwordErrors : passwordErrors + i.1 + "\n"}
        
        return (passwordErrors == "", passwordErrors)
    }
    
    error = "\(isValidLogin().1) \n\(isValidPassword().1)"
    
    if isValidLogin().0 && isValidPassword().0 { return (true, "Успешная авторизация") }
    
    return (false, error)
}
