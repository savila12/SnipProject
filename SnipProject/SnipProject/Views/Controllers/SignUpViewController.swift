//
//  SignUpViewController.swift
//  SnipProject
//
//  Created by Matthew Hernandez on 7/27/21.
//

import UIKit

class SignUpViewController: UIViewController {

    let firstName = UITextField()
    let lastName = UITextField()
    let email = UITextField()
    let password = UITextField()
    let signupBtn = UIButton()
    let orLabel = UILabel()
    let facebookBtn = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Sign up"
        
        setUpFirstName()
        setUpLastName()
        setUpEmail()
        setUpPassword()
        setUpSignupBtn()
        setUpOrLabel()
        setUpFaceBookBtn()
    }
    
    func setUpFirstName(){
        view.addSubview(firstName)
        firstName.placeholder = " First Name"
        
        let bottomBorder = CALayer()
        bottomBorder.frame = CGRect(
            x:0,
            y: self.firstName.frame.size.height - 2.0,
            width: self.firstName.frame.size.width,
            height: 2.0)
        
        bottomBorder.backgroundColor = UIColor.gray.cgColor
        firstName.borderStyle = .none
        self.firstName.layer.addSublayer(bottomBorder)
        
        firstName.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 120, left: 30, bottom: 0, right: -30), size: .init(width: 0, height: 50))
        
    }
    
    func setUpLastName(){
        view.addSubview(lastName)
        lastName.placeholder = " Last Name"
        
        lastName.anchor(top: firstName.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 20, left: 30, bottom: 0, right: -30), size: .init(width: 0, height: 50))
    }
    
    func setUpEmail(){
        view.addSubview(email)
        email.placeholder = " Email"
        
        email.anchor(top: lastName.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 20, left: 30, bottom: 0, right: -30), size: .init(width: 0, height: 50))
    }
    
    func setUpPassword(){
        view.addSubview(password)
        password.placeholder = " Password"
        
        password.anchor(top: email.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 20, left: 30, bottom: 0, right: -30), size: .init(width: 0, height: 50))
    }
    
    func setUpSignupBtn(){
        view.addSubview(signupBtn)
        signupBtn.setTitle("Create Account", for: .normal)
        signupBtn.setTitleColor(.black, for: .normal)
        
        signupBtn.backgroundColor = #colorLiteral(red: 0.877602809, green: 0.8508373205, blue: 1, alpha: 1)
        signupBtn.layer.cornerRadius = 25
        //loginBtn.layer.borderWidth = 1
        signupBtn.layer.borderColor = UIColor.black.cgColor
        
        signupBtn.anchor(top: password.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 60, left: 60, bottom: 0, right: -60), size: .init(width: 0, height: 50))
    }
    
    func setUpOrLabel(){
        view.addSubview(orLabel)
        orLabel.text = "or"
        orLabel.textAlignment = .center
        
        orLabel.anchor(top: signupBtn.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 15, left: 100, bottom: 0, right: -100))
    }
    
    func setUpFaceBookBtn(){
        view.addSubview(facebookBtn)
        facebookBtn.setTitle("Facebook", for: .normal)
        facebookBtn.setTitleColor(.white, for: .normal)
        facebookBtn.backgroundColor = .blue
        
       // loginBtn.backgroundColor = #colorLiteral(red: 0.877602809, green: 0.8508373205, blue: 1, alpha: 1)
        facebookBtn.layer.cornerRadius = 25
        //loginBtn.layer.borderWidth = 1
        //facebookBtn.layer.borderColor = UIColor.black.cgColor
        
        facebookBtn.anchor(top: orLabel.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 15, left: 60, bottom: 0, right: -60), size: .init(width: 0, height: 50))
    }
    


}
