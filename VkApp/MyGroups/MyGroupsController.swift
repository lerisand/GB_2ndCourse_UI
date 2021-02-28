//
//  MyGroupsController.swift
//  VkApp
//
//  Created by Lera on 21.02.21.
//

import UIKit

class MyGroupsController: UITableViewController {
    
    
   var myGroups = [
        Group(name: "Animal Planet", image: UIImage(named:"animal planet")!),
        Group(name: "Discovery", image: UIImage(named:"discovery")!),
        Group(name: "CNN", image: UIImage(named:"cnn")!),
        Group(name: "BBC", image: UIImage(named:"bbc")!),
        Group(name: "Cartoon Network", image: UIImage(named:"cartoon network")!),
        Group(name: "MTV", image: UIImage(named:"mtv")!),
        Group(name: "HBO", image: UIImage(named:"hbo")!),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myGroups.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupCell", for: indexPath) as! GroupCell
        cell.setData(name: myGroups[indexPath.row].name, image: myGroups[indexPath.row].image)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            myGroups.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    @IBAction func addGroup(segue: UIStoryboardSegue) {
        
        // проверяем идентификатор перехода, чтобы убедиться, что это нужный
        if segue.identifier == "addGroup" {
            // получаем ссылку на контроллер, с которого осуществлен переход
            guard let allGroupsController = segue.source as? AllGroupsController else { return }
            
            // получаем индекс выделенной ячейки
            if let indexPath = allGroupsController.tableView.indexPathForSelectedRow {
                
                // получаем группу по индексу
                let group = groupsList[indexPath.row]
                //проверяем, что такой группы нет в списке
                if !myGroups.contains(group) {
                    // добавляем группу в список выбранных
                    myGroups.append(group)
                    // обновляем таблицу
                    tableView.reloadData()
                }
            }
        }
    }
}
