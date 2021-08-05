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
    let loginVC = LoginViewController()
    
    func validateEmail(email: String?) -> String? {
        return nil
    }
    
    func  validatePassword(password: String?) -> String? {
        return nil
    }
}

protocol UserViewModelProtocol {
    func sendValue(emailTextField: String?, passwordTextField: String?)
}
