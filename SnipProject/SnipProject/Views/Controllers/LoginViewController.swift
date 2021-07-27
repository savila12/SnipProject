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
    let passwordTxtField = UITextField()
    let loginBtn = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpLoginLabel()
        setUpUsername()
        setUpPassword()
        setUpLoginBtn()
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
    
    func setUpPassword() {
        view.addSubview(passwordTxtField)
        passwordTxtField.placeholder = " Password"
        passwordTxtField.anchor(top: usernameTxtField.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 40, left: 50, bottom: 0, right: -50))
    }
    
    func setUpLoginBtn() {
        view.addSubview(loginBtn)
        loginBtn.setTitle("Login", for: .normal)
        loginBtn.setTitleColor(.black, for: .normal)
        loginBtn.anchor(top: passwordTxtField.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 20, left: 100, bottom: 0, right: -100))
    }

}
