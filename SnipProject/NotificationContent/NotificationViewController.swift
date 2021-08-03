//
//  NotificationViewController.swift
//  NotificationContent
//
//  Created by Matthew Hernandez on 8/3/21.
//

import UIKit
import UserNotifications
import UserNotificationsUI

class NotificationViewController: UIViewController, UNNotificationContentExtension {

    @IBOutlet var label: UILabel?
    
    
    @IBOutlet weak var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any required interface initialization here.
    }
    
    @available(iOSApplicationExtension 10.0, *)
    func didReceive(_ notification: UNNotification) {
        self.label?.text = notification.request.content.body
        let content = notification.request.content
        
        if let urlImageString = content.userInfo["urlImageString"] as? String {
            if let url = URL(string: urlImageString) {
                URLSession.downloadImage(atURL: url) {[weak self] (data, error) in
                    if let _ = error {
                        return
                    }
                    guard let data = data else {return}
                    DispatchQueue.main.async {
                        self?.imgView.image = UIImage(data: data)
                    }
                    
                }
            }
        }
    }

}

extension URLSession {
    class func downloadImage(atURL url: URL, withCompletionHandler completionHandler: @escaping (Data?, NSError?) -> Void) {
           let dataTask = URLSession.shared.dataTask(with: url) { (data, urlResponse, error) in
               completionHandler(data, nil)
           }
           dataTask.resume()
       }
}
