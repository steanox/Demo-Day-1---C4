//
//  TableViewController.swift
//  DemoDay1
//
//  Created by octavianus on 05/04/21.
//

import UIKit
import CoreData

class DemoTableViewController: UIViewController,UITableViewDataSource{
    
    var users: [User] = User.generateDummyData()
    
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
     }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
         return "Custom Cell"
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! CustomCell
        cell.user = users[indexPath.row]
        return cell
        
    }
    
    
    
}
