//
//  CustomTableViewCell.swift
//  SnipProject
//
//  Created by Matthew Hernandez on 8/6/21.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imgProfile: UIImageView!
    @IBOutlet weak var personLabel: UILabel!
    @IBOutlet weak var detailsLabel: UILabel!
    @IBOutlet weak var contentImgView: UIImageView!
    @IBOutlet weak var detailsLabel2: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
