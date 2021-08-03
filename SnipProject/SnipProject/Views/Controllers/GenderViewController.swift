//
//  GenderViewController.swift
//  SnipProject
//
//  Created by Matthew Hernandez on 7/27/21.
//

import UIKit

class GenderViewController: UIViewController {

    let label = UILabel()
    let ageTxt = UITextField()
    let genderLabel = UILabel()
    let genderTxt = UITextField()
    let orLabel = UILabel()
    let skipBtn = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.navigationController?.navigationBar.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: 100)
        self.title = "How old are you?"
        
        setUpLabel()
        setUpAgeTxt()
        setUpGenderLabel()
        setUpGenderTxt()
        setUpOrLabel()
        setUpSkipBtn()
        
        setUpLeftBtnInNav()
    }
    
    func setUpLabel() {
        view.addSubview(label)
        label.text = "How old are you?"
        label.textAlignment = .center
        
        label.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 20, left: 50, bottom: 0, right: -50))
    }
    
    func setUpAgeTxt() {
        view.addSubview(ageTxt)
        ageTxt.backgroundColor = #colorLiteral(red: 0.2128325701, green: 0.337071836, blue: 0.5774024725, alpha: 1)
        ageTxt.attributedPlaceholder = NSAttributedString(string: "Age", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        ageTxt.textAlignment = .center
        
        ageTxt.layer.cornerRadius = 25
        
        ageTxt.anchor(top: label.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 80, left: 100, bottom: 0, right: -100), size: .init(width: 0, height: 50))
    }
    
    func setUpGenderLabel() {
        view.addSubview(genderLabel)
        genderLabel.text = "What's your gender?"
        genderLabel.textAlignment = .center
        
        genderLabel.anchor(top: ageTxt.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 60, left: 50, bottom: 0, right: -50))
    }
    
    func setUpGenderTxt() {
        view.addSubview(genderTxt)
        genderTxt.backgroundColor = #colorLiteral(red: 0.2128325701, green: 0.337071836, blue: 0.5774024725, alpha: 1)
        genderTxt.attributedPlaceholder = NSAttributedString(string: "INPUT GENDER", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        genderTxt.textAlignment = .center
        
        genderTxt.layer.cornerRadius = 25
        
        genderTxt.anchor(top: genderLabel.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 60, left: 50, bottom: 0, right: -50), size: .init(width: 0, height: 50))
    }
    
    func setUpOrLabel() {
        view.addSubview(orLabel)
        orLabel.text = "or"
        orLabel.textAlignment = .center
        
        orLabel.anchor(top: genderTxt.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 60, left: 100, bottom: 0, right: -100))
    }
    
    func setUpSkipBtn() {
        view.addSubview(skipBtn)
        skipBtn.setTitle("skip", for: .normal)
        skipBtn.setTitleColor(.blue, for: .normal)
        
        skipBtn.anchor(top: orLabel.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 60, left: 100, bottom: 0, right: -100))
        
        skipBtn.addTarget(self, action: #selector(skip), for: .touchUpInside)
    }
    
    func setUpLeftBtnInNav(){
        navigationItem.leftBarButtonItem = UIBarButtonItem.init(title: "<", style: .plain, target: self, action: #selector(goBack))
        
    }
    
    @objc func goBack() {
        navigationController?.popViewController(animated: true)
    }
    
    @objc func skip(){
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(identifier: "DIYPickerViewController")
        
        navigationController?.pushViewController(vc, animated: true)
    }

}
