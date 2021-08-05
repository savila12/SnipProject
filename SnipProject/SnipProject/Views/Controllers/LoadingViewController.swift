//
//  LoadingViewController.swift
//  SnipProject
//
//  Created by Matthew Hernandez on 8/5/21.
//

import UIKit

class LoadingViewController: UIViewController {
    
    let lbl = UILabel()
    let imgView = UIImageView()
    let lab2 = UILabel()
    let loadingPage = UIActivityIndicatorView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.isHidden = true

        setUplbl()
        setUpImageView()
        setUplbl2()
        setUpLoadingPage()
    }
    

    func setUplbl(){
        view.addSubview(lbl)
        lbl.text = "Almost There"
        
        lbl.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 0, left: 20, bottom: 0, right: -20))
    }
    
    func setUpImageView(){}
    
    func setUplbl2(){}
    
    func setUpLoadingPage(){}

}
