//
//  ExperienceViewController.swift
//  SnipProject
//
//  Created by Matthew Hernandez on 7/30/21.
//

import UIKit

class ExperienceViewController: UIViewController {
    
    let beginningBtn = UIButton()
    let intermediateBtn = UIButton()
    let expertBtn = UIButton()
    let orLabel = UILabel()
    let skipBtn = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Experience??"
        
        setUpBeginningBtn()
        setUpIntermediateBtn()
        setUpExpertBtn()
        setUpOrLabel()
        setUpSkipBtn()
    }
    
    func setUpBeginningBtn() {
        view.addSubview(beginningBtn)
        beginningBtn.setTitle("Beginner", for: .normal)
        beginningBtn.setTitleColor(.white, for: .normal)
        beginningBtn.backgroundColor = #colorLiteral(red: 0.2128325701, green: 0.337071836, blue: 0.5774024725, alpha: 1)
        beginningBtn.layer.cornerRadius = 30
        
        beginningBtn.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 80, left: 30, bottom: 0, right: -30), size: .init(width: 0, height: 60))
    }
    
    func setUpIntermediateBtn() {
        view.addSubview(intermediateBtn)
        intermediateBtn.setTitle("Intermediate", for: .normal)
        intermediateBtn.setTitleColor(.white, for: .normal)
        intermediateBtn.backgroundColor = #colorLiteral(red: 0.2128325701, green: 0.337071836, blue: 0.5774024725, alpha: 1)
        intermediateBtn.layer.cornerRadius = 30
        
        intermediateBtn.anchor(top: beginningBtn.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 40, left: 30, bottom: 0, right: -30), size: .init(width: 0, height: 60))
    }
    
    func setUpExpertBtn() {
        view.addSubview(expertBtn)
        expertBtn.setTitle("Expert", for: .normal)
        expertBtn.setTitleColor(.white, for: .normal)
        expertBtn.backgroundColor = #colorLiteral(red: 0.2128325701, green: 0.337071836, blue: 0.5774024725, alpha: 1)
        expertBtn.layer.cornerRadius = 30
        
        expertBtn.anchor(top: intermediateBtn.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 40, left: 30, bottom: 0, right: -30), size: .init(width: 0, height: 60))
    }
    
    func setUpOrLabel() {
        view.addSubview(orLabel)
        orLabel.text = "or"
        orLabel.textAlignment = .center
        
        orLabel.anchor(top: expertBtn.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 60, left: 80, bottom: 0, right: -80))
    }
    
    func setUpSkipBtn () {
        view.addSubview(skipBtn)
        skipBtn.setTitle("Skip", for: .normal)
        skipBtn.setTitleColor(.blue, for: .normal)
        
        skipBtn.addTarget(self, action: #selector(skip), for: .touchUpInside)
        
        skipBtn.anchor(top: orLabel.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 60, left: 80, bottom: 0, right: -80))
    }
    
    @objc func skip(){
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(identifier: "TabBarController")
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
    


}
