//
//  HomeViewController.swift
//  SnipProject
//
//  Created by Matthew Hernandez on 7/29/21.
//

import UIKit
import Firebase

class HomeViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var ref: DatabaseReference?
    
    var databaseHandle: DatabaseHandle?
    
    var userData = [User]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ref = Database.database().reference()
        registerTableViewCell()
        retrieveUsers()
        
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
    }
    
    func retrieveUsers(){
        let userId = Auth.auth().currentUser?.uid
        
        ref?.child("users").child(userId!).observeSingleEvent( of: .value, with: { (snapshot) in
            
            self.ref?.child("users").observe(.childAdded, with: { (snapshot) in
                
                if let dictionary = snapshot.value as? [String: AnyObject] {
                    
                    let user = User()
                    user.setValuesForKeys(dictionary)
                    
                    self.userData.append(user)
                }
                
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            })
        })
    }
    
    func registerTableViewCell(){
        let tableViewCell = UINib(nibName: "CustomTableViewCell", bundle: nil)
        
        self.tableView.register(tableViewCell, forCellReuseIdentifier: "cell")
    }
    
   

}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(userData.count)
        return userData.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let cellHeight = tableView.rowHeight + 450
        return cellHeight
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? CustomTableViewCell
        
        let userInfo = userData[indexPath.row]
        
        cell?.personLabel.text = userInfo.firstname
        cell?.imgProfile.image = UIImage(named: "avatarMale")
        cell?.contentImgView.image = UIImage(named: "SnipLogo")
        
        return cell ?? UITableViewCell()
    }
    
    
}
