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
    
    func setUpImageView(){
        view.addSubview(imgView)
        imgView.image = UIImage(named: "SnipLogo")
        
        imgView.anchor(top: lbl.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 40, left: 50, bottom: 0, right: -50), size: .init(width: 0, height: 200))
    }
    
    func setUplbl2(){
        view.addSubview(lab2)
        lab2.numberOfLines = 0
        lab2.text = "Did You Know: \n90% of fast fashion can be recycled or upcycled!"
        lab2.textAlignment = .center
        
        lab2.anchor(top: imgView.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 40, left: 50, bottom: 0, right: -50))
    }
    
    func setUpLoadingPage(){
        //view.addSubview(loadingPage)
        
    }

}
