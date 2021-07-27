//
//  LoginViewController.swift
//  SnipProject
//
//  Created by Matthew Hernandez on 7/26/21.
//

import UIKit

class LoginViewController: UIViewController {

    let loginLabel = UILabel()
    let usernameTxtField = UITextField()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpLoginLabel()
        setUpUsername()
    }
    
    func setUpLoginLabel() {
        view.addSubview(loginLabel)
        loginLabel.text = "Login"
        loginLabel.textAlignment = .center
        loginLabel.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 100, left: 100, bottom: 0, right: -100))
    }
    
    func setUpUsername() {
        view.addSubview(usernameTxtField)
        usernameTxtField.placeholder = " Username"
        usernameTxtField.anchor(top: loginLabel.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 50, left: 50, bottom: 0, right: -50))
    }

}
