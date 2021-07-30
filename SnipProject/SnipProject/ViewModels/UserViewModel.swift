//
//  UserViewModel.swift
//  SnipProject
//
//  Created by Matthew Hernandez on 7/29/21.
//

import Foundation

class UserViewModel {
    var delegate: UserViewModelProtocol?
    var user: User?
}

extension UserViewModel: LoginViewControllerProtocol {
    func sendInfoBack(email: String?, password: String?) -> String {
        //let emailRegEx = "[A-Z0-9a-z._%+-]+\\.[A-Za-Z]{2,64}"
        
        if let email = email, let password = password {
            
            if email == "" || password == "" {
                return "Email and Password field must be filled"
            }
            
            if email.count < 10 && password.count < 8{
                return "Invalid email and password"
            } else {
                return ""
            }
        }
        return ""
        
    }
}

protocol UserViewModelProtocol {
    func sendValue(emailTextField: String?, passwordTextField: String?)
}
