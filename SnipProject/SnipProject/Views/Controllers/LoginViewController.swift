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
    let orLabel = UILabel()
    let faceBootBtn = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Login"
        
        
        
        setUpUsername()
        setUpPassword()
        setUpOrLabel()
        setUpFaceBookBtn()
        
        setUpLeftBtnInNav()
    }
    
    
    func setUpUsername() {
        let borderBtm = UIView()
        view.addSubview(borderBtm)
        view.addSubview(usernameTxtField)
        usernameTxtField.borderStyle = .none
        
        usernameTxtField.attributedPlaceholder = NSAttributedString(string: "Email", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        
        usernameTxtField.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 200, left: 50, bottom: 0, right: -50))
        
        borderBtm.borderBottom(top: usernameTxtField.bottomAnchor, leading: usernameTxtField.leadingAnchor, bottom: nil, trailing: usernameTxtField.trailingAnchor, padding: .init(top: 1, left: 0, bottom: 0, right: 0), size: .init(width: 0, height: 1))
    }
    
    func setUpPassword() {
        let borderBtm = UIView()
        view.addSubview(borderBtm)
        view.addSubview(passwordTxtField)
        passwordTxtField.borderStyle = .none
        
        passwordTxtField.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        
        passwordTxtField.anchor(top: usernameTxtField.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 40, left: 50, bottom: 0, right: -50))
        
        borderBtm.borderBottom(top: passwordTxtField.bottomAnchor, leading: passwordTxtField.leadingAnchor, bottom: nil, trailing: passwordTxtField.trailingAnchor, padding: .init(top: 1, left: 0, bottom: 0, right: 0), size: .init(width: 0, height: 1))
    }
    
    
    func setUpOrLabel(){
        view.addSubview(orLabel)
        orLabel.text = "or"
        orLabel.textAlignment = .center
        
        orLabel.anchor(top: passwordTxtField.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 40, left: 100, bottom: 0, right: -100))
    }
    
    func setUpFaceBookBtn() {
        view.addSubview(faceBootBtn)
        faceBootBtn.setTitle("Facebook", for: .normal)
        faceBootBtn.setTitleColor(.white, for: .normal)
        faceBootBtn.backgroundColor = #colorLiteral(red: 0.176544249, green: 0.1897960576, blue: 0.5565078427, alpha: 1)
        faceBootBtn.layer.cornerRadius = 25
        faceBootBtn.anchor(top: orLabel.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 40, left: 50, bottom: 0, right: -50), size: .init(width: 0, height: 50))
        
    }
    
    func setUpLeftBtnInNav(){
        navigationItem.leftBarButtonItem = UIBarButtonItem.init(title: "<", style: .plain, target: self, action: nil)
    }

}
