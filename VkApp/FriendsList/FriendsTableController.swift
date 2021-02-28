//
//  FriendsTableController.swift
//  VkApp
//
//  Created by Lera on 21.02.21.
//

import UIKit

class FriendsTableController: UITableViewController {
    
    var sections: [String : [User]] = [:]
    var keys: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        
        friendList.forEach { user in
            let firstletter = String(user.name.first!)
            if sections[firstletter] != nil {
                sections[firstletter]?.append(user)
            } else {
                sections[firstletter] = [user]
            }
        }
        keys = Array(sections.keys).sorted(by: <)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowFriendPhotos" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let photosLibrary = sections[keys[indexPath.section]]![indexPath.row].photosLibrary
                let photoCollectionController = segue.destination as! PhotoCollectionController
                photoCollectionController.photosLibrary = photosLibrary
            }
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return keys
    }
    
   override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.layer.bounds.width, height: 32))
        let textLabel = UILabel(frame: CGRect(x: 32, y: 0, width: tableView.layer.bounds.width - 64, height: 32))
        headerView.addSubview(textLabel)
        headerView.backgroundColor = UIColor.systemGray6
        headerView.layer.opacity = 0.5
        textLabel.text = keys[section]
        return headerView
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let key = keys[section]
        let count = sections[key]!.count
        return count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell") as! FriendCell
        
        let key = keys[indexPath.section]
        let user = sections[key]![indexPath.row]
        
        let avatar = user.avatar
        let name = user.name
       
        cell.setData(name: name, image: avatar)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

