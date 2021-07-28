//
//  ViewController.swift
//  SnipProject
//
//  Created by Matthew Hernandez on 7/26/21.
//

import UIKit

class LoginSignupViewController: UIViewController {
    
    let imgView = UIImageView.init()
    let snipLabel = UILabel()
    let designLabel = UILabel()
    let signupBtn = UIButton()
    let loginBtn = UIButton()
    
    let st = UIStoryboard.init(name: "Main", bundle: nil)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = #colorLiteral(red: 0.9764325023, green: 0.9686483741, blue: 0.9970936179, alpha: 1)
        
        [imgView, snipLabel, designLabel, signupBtn, loginBtn].forEach{ view.addSubview($0)}
        
        setUpimgView()
        setUpSnipLabel()
        setUpDesignLabel()
        setUpLoginBtn()
        setUpSignupBtn()
    }
    
    func setUpimgView(){
        view.addSubview(imgView)
        let imageName = "SnipLogo"
        imgView.image = UIImage(named: imageName)
        imgView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 200, left: 150, bottom: 0, right: -150))
    }
    
    func setUpSnipLabel(){
        snipLabel.text = "S n i p"
        snipLabel.textAlignment = .center
        snipLabel.anchor(top: imgView.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 8, left: 100, bottom: 0, right: -100))
    }
    
    func setUpDesignLabel(){
        designLabel.text = "Design Sustainably"
        designLabel.font = UIFont(name: "Savoye LET", size: 35)
        designLabel.textAlignment = .center
        designLabel.anchor(top: snipLabel.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 5, left: 100, bottom: 0, right: -100))
    }
    
    func setUpLoginBtn(){
        loginBtn.setTitle("Login", for: .normal)
        loginBtn.setTitleColor(.black, for: .normal)
        loginBtn.addTarget(self, action: #selector(goTologinBtn), for: .touchUpInside)
        
        loginBtn.backgroundColor = #colorLiteral(red: 0.877602809, green: 0.8508373205, blue: 1, alpha: 1)
        loginBtn.layer.cornerRadius = 25
        //loginBtn.layer.borderWidth = 1
        loginBtn.layer.borderColor = UIColor.black.cgColor
        
        loginBtn.anchor(top: designLabel.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 80, left: 100, bottom: 0, right: -100), size: .init(width: 0, height: 50))
    }

    func setUpSignupBtn(){
        signupBtn.setTitle("Sign Up", for: .normal)
        signupBtn.setTitleColor(.black, for: .normal)
        signupBtn.addTarget(self, action: #selector(goToSignup), for: .touchUpInside)
        
        signupBtn.backgroundColor = .clear
        signupBtn.layer.cornerRadius = 25
        signupBtn.layer.borderWidth = 1
        signupBtn.layer.borderColor = UIColor.black.cgColor
        
        signupBtn.anchor(top: loginBtn.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 15, left: 100, bottom: 0, right: -100), size: .init(width: 0, height: 50))
    }
    
    @objc func goTologinBtn(){
        let vc = st.instantiateViewController(identifier: "LoginViewController")
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func goToSignup() {
        let vc = st.instantiateViewController(identifier: "SignupViewController")
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension UIView {
    func anchor (top: NSLayoutYAxisAnchor?, leading: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?, trailing: NSLayoutXAxisAnchor?, padding: UIEdgeInsets = .zero, size: CGSize = .zero){
        translatesAutoresizingMaskIntoConstraints = false
        if let top = top{
            topAnchor.constraint(equalTo: top, constant: padding.top).isActive = true
        }
        if let leading = leading {
        leadingAnchor.constraint(equalTo: leading, constant: padding.left).isActive = true
        }
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: padding.bottom).isActive = true
        }
        if let trailing = trailing {
            trailingAnchor.constraint(equalTo: trailing, constant: padding.right).isActive = true
        }
        if size.width != 0 {
            widthAnchor.constraint(equalToConstant: size.width).isActive = true
        }
        if size.height != 0 {
            heightAnchor.constraint(equalToConstant: size.height).isActive = true
        }
    }
}

