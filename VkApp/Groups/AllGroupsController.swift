//
//  AllGroupsController.swift
//  VkApp
//
//  Created by Lera on 21.02.21.
//

import UIKit

class AllGroupsController: UITableViewController {
    
   var groups = [
        Group(name: "Animal Planet", image: UIImage(named:"animal planet")!),
        Group(name: "Discovery", image: UIImage(named:"discovery")!),
        Group(name: "CNN", image: UIImage(named:"cnn")!),
        Group(name: "BBC", image: UIImage(named:"bbc")!),
        Group(name: "Cartoon Network", image: UIImage(named:"cartoon network")!),
        Group(name: "MTV", image: UIImage(named:"mtv")!),
        Group(name: "HBO", image: UIImage(named:"hbo")!),
        Group(name: "National Geographic", image: UIImage(named:"national geographic")!),
        Group(name: "Showtime", image: UIImage(named:"showtime")!),
        Group(name: "Fox", image: UIImage(named:"fox")!),
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return groups.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // получаем ячейку из пула
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupsCell", for: indexPath) as! GroupsCell
    
        cell.setData(name: groups[indexPath.row].name,
                     avatar: groups[indexPath.row].image)
        return cell
    }

}
