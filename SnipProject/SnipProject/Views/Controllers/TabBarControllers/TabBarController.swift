//
//  UserProfileViewController.swift
//  SnipProject
//
//  Created by Matthew Hernandez on 7/29/21.
//

import UIKit

class TabBarController: UITabBarController {

    let st = UIStoryboard.init(name: "Main", bundle: nil)
    
    

    var homeVC: UIViewController?
    var explorterVC: UIViewController?
    var shareVC: UIViewController?
    var savedVC: UIViewController?
    var profileVC: UIViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        
        //navigationController?.setNavigationBarHidden(true, animated: true)
        
        homeVC = st.instantiateViewController(identifier: "HomeViewController") as? HomeViewController
        explorterVC = st.instantiateViewController(identifier: "ExplorerViewController") as? ExplorerViewController
        shareVC = st.instantiateViewController(identifier: "ShareViewController") as? ShareViewController
        savedVC = st.instantiateViewController(identifier: "SavedViewController") as? SavedViewController
        profileVC = st.instantiateViewController(identifier: "ProfileViewController") as?
            ProfileViewController
        
        setUpTabBar()
        logoutUser()
    }
    
    func setUpTabBar(){
        let homeIcon = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), selectedImage: nil)
        
        let explorerIcon = UITabBarItem(title: "Explorer", image: UIImage(systemName: "globe"), selectedImage: nil)
        
        let shareIcon = UITabBarItem(title: "Share", image: UIImage(named: "SnipLogoTabBar"), selectedImage: nil)
        shareIcon.image?.withRenderingMode(.alwaysOriginal)
        shareIcon.selectedImage?.withRenderingMode(.alwaysOriginal)
        shareIcon.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
        
        let savedIcon = UITabBarItem(title: "Saved", image: UIImage(systemName: "briefcase"), selectedImage: nil)
        
        let profileIcon = UITabBarItem(title: "Profile", image: UIImage(systemName: "person"), selectedImage: nil)
        
        homeVC?.tabBarItem = homeIcon
        explorterVC?.tabBarItem = explorerIcon
        shareVC?.tabBarItem = shareIcon
        savedVC?.tabBarItem = savedIcon
        profileVC?.tabBarItem = profileIcon
        
        let controllers = [homeVC!, explorterVC!, shareVC!, savedVC!, profileVC!]
        self.viewControllers = controllers.map{UINavigationController(rootViewController: $0)}
    }

}

extension TabBarController: UITabBarControllerDelegate {
    
    func logoutUser(){
        navigationItem.leftBarButtonItem = UIBarButtonItem.init(title: "logout", style: .plain, target: self, action: #selector(handleLogout))
    }
    
    @objc func handleLogout(){
        navigationController?.popToRootViewController(animated: true)
    }
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        return true
    }
    
//    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
//        navigationController?.pushViewController(homeVC!, animated: true)
//    }

}
