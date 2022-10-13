//
//  AuthentificationService.swift
//  Test1
//
//  Created by 66 on 12.10.22.
//

import Foundation

class AuthentificationService {
    
    func login(username: String, password: String, successHandler: () -> Void, errorHandler: (String) -> Void) {
        sleep(3)
        successHandler()
    }
    
    func registration(firstname: String, lastname: String, password: String, age: String , successHandler: () -> Void, errorHandler: (String) -> Void) {
        
        
        successHandler() //-?
        
        
        
    }
}



//        let url = URL(string: "https://gorest.co.in/public/v2/users")
//        let session = URLSession.shared
//
//        let request = NSMutableURLRequest(url: url!)
//        request.httpMethod = "POST"
