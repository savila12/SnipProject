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
    func sendInfoBack(email: String?, password: String?) -> Bool? {
        //let emailRegEx = "[A-Z0-9a-z._%+-]+\\.[A-Za-Z]{2,64}"
        
        if let email = email, let password = password {
            if email == "" || password == "" {
                return false
            }
            
            if email.count < 10 && password.count < 8{
                return false
            } else {
                return true
            }
        }
        return true
        
    }
}

protocol UserViewModelProtocol {
    func sendValue(emailTextField: String?, passwordTextField: String?)
}
