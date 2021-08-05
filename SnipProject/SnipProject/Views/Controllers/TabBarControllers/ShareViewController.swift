//
//  ShareViewController.swift
//  SnipProject
//
//  Created by Matthew Hernandez on 7/29/21.
//

import UIKit

class ShareViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let logo = UIImage(named: "SnipLogo")
        let imgView = UIImageView(image: logo)
        self.navigationItem.titleView = imgView

    }

}
