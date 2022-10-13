//
//  UsersViewCell.swift
//  Test1
//
//  Created by 66 on 11.10.22.
//

import UIKit

class UsersViewCell: UITableViewCell {

    
    @IBOutlet weak var userImage: UIImageView?
    @IBOutlet weak var userNumber: UILabel!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userAge: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
