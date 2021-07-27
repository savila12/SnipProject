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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = #colorLiteral(red: 0.9764325023, green: 0.9686483741, blue: 0.9970936179, alpha: 1)
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
        view.addSubview(snipLabel)
        snipLabel.text = "S n i p"
        //snipLabel.font.withSize()
        snipLabel.textAlignment = .center
        snipLabel.anchor(top: imgView.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 8, left: 100, bottom: 0, right: -100))
    }
    func setUpDesignLabel(){
        view.addSubview(designLabel)
        designLabel.text = "Design Sustainably"
        designLabel.font = UIFont(name: "Savoye LET", size: 35)
        designLabel.textAlignment = .center
        designLabel.anchor(top: snipLabel.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 5, left: 100, bottom: 0, right: -100))
    }
    
    func setUpLoginBtn(){
        view.addSubview(loginBtn)
        loginBtn.setTitle("Login", for: .normal)
        loginBtn.setTitleColor(.black, for: .normal)
        loginBtn.anchor(top: designLabel.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 80, left: 100, bottom: 0, right: -100))
    }

    func setUpSignupBtn(){
        view.addSubview(signupBtn)
        signupBtn.setTitle("Sign Up", for: .normal)
        signupBtn.setTitleColor(.black, for: .normal)
        signupBtn.anchor(top: loginBtn.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 8, left: 100, bottom: 0, right: -100))
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

