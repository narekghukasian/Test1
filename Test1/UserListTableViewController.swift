//
//  UserListTableViewController.swift
//  Test1
//
//  Created by 66 on 11.10.22.
//

import UIKit

class UserListTableViewController: UITableViewController {
    
    var usersList = [String]()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "UsersViewCell", bundle: nil), forCellReuseIdentifier: "UsersViewCell")

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 3
       // return usersList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UsersViewCell", for: indexPath) as! UsersViewCell
 //       cell.cellConfig(itemAt: <#T##UserDataModel#>)
        cell.userNumber.text = "\(indexPath.row + 1)"
        // Configure the cell...
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewController:UIViewController = UsersDetailViewController()
        self.navigationController?.pushViewController(viewController, animated: true)
    }
       
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}
