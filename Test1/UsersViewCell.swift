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

    func cellConfig(itemAt : UserDataModel) {
        userNumber.text = "\(itemAt.number!)"
        userName.text = itemAt.userName
        userAge.text = "\(itemAt.userage!)"
    }
    
}
