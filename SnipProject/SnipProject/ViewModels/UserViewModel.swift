//
//  UserViewModel.swift
//  SnipProject
//
//  Created by Matthew Hernandez on 7/29/21.
//

import Foundation
import Firebase

class UserViewModel {
    
    var delegate: UserViewModelProtocol?
    var user: User?
    let loginVC = LoginViewController()
    
    func validateLoginFields(email: String?, password: String?) -> String? {
        
        if email?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            password?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            return "Please fill in empty fields"
        }
        
        return nil
        
    }
}

protocol UserViewModelProtocol {
    func sendValue(emailTextField: String?, passwordTextField: String?)
}
