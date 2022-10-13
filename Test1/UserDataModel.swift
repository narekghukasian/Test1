//
//  UserDataModel.swift
//  Test1
//
//  Created by 66 on 11.10.22.
//

import Foundation
import UIKit

class UserDataModel {
    var image : String?
    var number : Int?
    var userName: String?
    var userLastName : String?
    var userage: Int?
    
    init(image: String? = nil ,number: Int? = nil, userName: String? = nil, userLastName: String? = nil, userage: Int? = nil) {
        self.image = image
        self.number = number
        self.userName = userName
        self.userLastName = userLastName
        self.userage = userage
    }
    
    
    
}
