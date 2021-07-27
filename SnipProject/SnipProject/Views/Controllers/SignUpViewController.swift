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
        
        firstName.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 150, left: 30, bottom: 0, right: -30))
        
    }
    
    func setUpLastName(){
        view.addSubview(lastName)
        lastName.placeholder = " Last Name"
        
        lastName.anchor(top: firstName.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 15, left: 30, bottom: 0, right: -30))
    }
    
    func setUpEmail(){
        view.addSubview(email)
        email.placeholder = " Email"
        
        email.anchor(top: lastName.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 15, left: 30, bottom: 0, right: -30))
    }
    
    func setUpPassword(){
        view.addSubview(password)
        password.placeholder = " Password"
        
        password.anchor(top: email.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 15, left: 30, bottom: 0, right: -30))
    }
    
    func setUpSignupBtn(){
        view.addSubview(signupBtn)
        signupBtn.setTitle("Sign Up", for: .normal)
        signupBtn.setTitleColor(.black, for: .normal)
        
        signupBtn.anchor(top: password.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 20, left: 60, bottom: 0, right: -60))
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
        
        facebookBtn.anchor(top: orLabel.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 15, left: 60, bottom: 0, right: -60))
    }
    


}
