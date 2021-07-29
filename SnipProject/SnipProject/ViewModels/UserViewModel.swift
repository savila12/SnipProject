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
    func sendInfoBack(email: String?, password: String?) {
        
    }
}

protocol UserViewModelProtocol {
    func sendValue(emailTextField: String?, passwordTextField: String?)
}
