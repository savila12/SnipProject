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
        ageTxt.placeholder = " Input Age"
        
        ageTxt.anchor(top: label.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 80, left: 100, bottom: 0, right: -100))
    }
    
    func setUpGenderLabel() {
        view.addSubview(genderLabel)
        genderLabel.text = "What's your gender?"
        genderLabel.textAlignment = .center
        
        genderLabel.anchor(top: ageTxt.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 60, left: 50, bottom: 0, right: -50))
    }
    
    func setUpGenderTxt() {
        view.addSubview(genderTxt)
        genderTxt.placeholder = "  Gender  "
        
        genderTxt.anchor(top: genderLabel.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 60, left: 50, bottom: 0, right: -50))
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
    }
    
    func setUpLeftBtnInNav(){
        navigationItem.leftBarButtonItem = UIBarButtonItem.init(title: "<", style: .plain, target: self, action: #selector(goBack))
    }
    
    @objc func goBack() {
        navigationController?.popViewController(animated: true)
    }

}
