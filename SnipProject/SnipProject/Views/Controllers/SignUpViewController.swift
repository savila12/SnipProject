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
        let borderBtm = UIView()
        view.addSubview(borderBtm)
        view.addSubview(firstName)
        
        firstName.attributedPlaceholder = NSAttributedString(string: "First Name", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        
        firstName.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 120, left: 30, bottom: 0, right: -30), size: .init(width: 0, height: 50))
        
        borderBtm.borderBottom(top: firstName.bottomAnchor, leading: firstName.leadingAnchor, bottom: nil, trailing: firstName.trailingAnchor, padding: .init(top: 1, left: 0, bottom: 0, right: 0), size: .init(width: 0, height: 1))
        
    }
    
    func setUpLastName(){
        let borderBtm = UIView()
        view.addSubview(borderBtm)
        view.addSubview(lastName)
        
        lastName.attributedPlaceholder = NSAttributedString(string: "Last Name", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        
        lastName.anchor(top: firstName.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 20, left: 30, bottom: 0, right: -30), size: .init(width: 0, height: 50))
        
        borderBtm.borderBottom(top: lastName.bottomAnchor, leading: lastName.leadingAnchor, bottom: nil, trailing: lastName.trailingAnchor, padding: .init(top: 1, left: 0, bottom: 0, right: 0), size: .init(width: 0, height: 1))
    }
    
    func setUpEmail(){
        let borderBtm = UIView()
        view.addSubview(borderBtm)
        view.addSubview(email)
        
        email.attributedPlaceholder = NSAttributedString(string: "Email", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        
        email.anchor(top: lastName.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 20, left: 30, bottom: 0, right: -30), size: .init(width: 0, height: 50))
        
        borderBtm.borderBottom(top: email.bottomAnchor, leading: email.leadingAnchor, bottom: nil, trailing: email.trailingAnchor, padding: .init(top: 1, left: 0, bottom: 0, right: 0), size: .init(width: 0, height: 1))
    }
    
    func setUpPassword(){
        let borderBtm = UIView()
        view.addSubview(borderBtm)
        view.addSubview(password)
        
        password.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        
        password.anchor(top: email.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 20, left: 30, bottom: 0, right: -30), size: .init(width: 0, height: 50))
        
        borderBtm.borderBottom(top: password.bottomAnchor, leading: password.leadingAnchor, bottom: nil, trailing: password.trailingAnchor, padding: .init(top: 1, left: 0, bottom: 0, right: 0), size: .init(width: 0, height: 1))
    }
    
    func setUpSignupBtn(){
        view.addSubview(signupBtn)
        signupBtn.setTitle("Create Account", for: .normal)
        signupBtn.setTitleColor(.black, for: .normal)
        signupBtn.addTarget(self, action: #selector(goToGenderView), for: .touchUpInside)
        
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
        facebookBtn.backgroundColor = #colorLiteral(red: 0.2128325701, green: 0.337071836, blue: 0.5774024725, alpha: 1)

        facebookBtn.layer.cornerRadius = 25
        
        facebookBtn.anchor(top: orLabel.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 15, left: 60, bottom: 0, right: -60), size: .init(width: 0, height: 50))
        
    }
    
    @objc func goToGenderView(){
        let st = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = st.instantiateViewController(identifier: "GenderViewController")
        
        navigationController?.pushViewController(vc, animated: true)
    }


}
