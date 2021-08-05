//
//  HomeViewController.swift
//  SnipProject
//
//  Created by Matthew Hernandez on 7/29/21.
//

import UIKit

class HomeViewController: UIViewController {
    
    let imgView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Home"
        
        setupImageView()
    }
    
    func setupImageView() {
        view.addSubview(imgView)
        imgView.image = UIImage(named: "SnipLogo")
        
        imgView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 10, left: 20, bottom: 0, right: -20), size: .init(width: 0, height: 200))
    }

}
