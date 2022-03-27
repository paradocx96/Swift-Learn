//
//  DataListViewController.swift
//  MyApp
//
//  Created by Interactive Media on 2/26/22.
//  Copyright © 2022 Interactive Media. All rights reserved.
//

import UIKit

class DataListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, ItemUpdateDeligate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var itemsList:[ListItem] = [ListItem]()
    
    var seletcteditem: ListItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView.init()
        // Do any additional setup after loading the view.
        
        setup()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemsList.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        let delete = UITableViewRowAction(style: .destructive, title: "Delete"){
            (action, indexPath) in
            print("Deleted Called!")
            
            self.deleteItem(itemRow: indexPath.row)
        }
        
        let share = UITableViewRowAction(style: .destructive, title: "Share"){
            (action, indexPath) in
            print("Shared!")
        }
        
        share.backgroundColor = UIColor.blue
        
        let edit = UITableViewRowAction(style: .destructive, title: "Edit"){
            (action, indexPath) in
            print("Edited!")
            
            self.seletcteditem = self.itemsList[indexPath.row]
            self.performSegue(withIdentifier: "goToEditItem", sender: self)
        }
        
        edit.backgroundColor = UIColor.green
        
        return [delete, share, edit]
    }
    
    func deleteItem(itemRow: Int){
        let simpleAlert = UIAlertController(title: "Delete \(1 + itemRow) Item", message: "Are you sure, you want to delete?", preferredStyle:.alert)
        
        simpleAlert.addAction(UIAlertAction(title: "Yes", style: .default, handler: {
            (action: UIAlertAction!) in
            print("Item Deleted!")
            
            self.itemsList.remove(at: itemRow)
            self.tableView.reloadData()
        }))
        
        simpleAlert.addAction(UIAlertAction(title: "No", style: .default, handler: {
            (action: UIAlertAction!) in
            print("Item Deleted Canceld!")
        }))
        
        self.present(simpleAlert, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "singleCell") as! SingleTableViewCell
        
        // cell.txtLabel.text = "SLIIT \(indexPath.row)"
        
        let currentItem = itemsList[indexPath.row]
        
        cell.txtTitile.text = currentItem.listTitle
        cell.txtSubTitle.text = currentItem.listSubTitile
        
        return cell
    }
    
    func setup(){
        let item1 = ListItem.init(lid: "1", title: "T-Shirt", subTitle: "In a storyboard-based application, you will often want to do a little preparation before navigation override func prepare for segue")
        let item2 = ListItem.init(lid: "2", title: "Shirt", subTitle: "In a storyboard-based application, you will often want to do a little preparation before navigation override func prepare for segue")
        let item3 = ListItem.init(lid: "3", title: "Denin", subTitle: "In a storyboard-based application, you will often want to do a little preparation before navigation override func prepare for segue")
        let item4 = ListItem.init(lid: "4", title: "Short Denin", subTitle: "In a storyboard-based application, you will often want to do a little preparation before navigation override func prepare for segue")
        
        itemsList.append(item1)
        itemsList.append(contentsOf: [item2, item3, item4])
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.updateDataByNotification(notification:)), name: Notification.Name("UpdateData"), object: nil)
    }
    
    @objc func updateDataByNotification(notification: Notification) {
        if let userInfo = notification.userInfo {
            let updateObject = userInfo["itemObject"] as! ListItem
            
            var filteredItems = self.itemsList.filter{$0.lid != updateObject.lid}
            filteredItems.append(updateObject)
            
            self.itemsList.removeAll()
            self.itemsList.append(contentsOf: filteredItems)
            self.tableView.reloadData()
            
            print(updateObject.lid)
        }
    }
    
    func addNewItem(item: ListItem) {
        self.itemsList.append(item)
        self.tableView.reloadData()
        print("Item Create Process Done")
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToAddNewItem" {
            let viewController = segue.destination as! NewItemViewController
            viewController.deligate = self
        } else if segue.identifier == "goToEditItem" {
            let viewController = segue.destination as! NewItemViewController
            viewController.selectedItem = self.seletcteditem
            viewController.isEditing = true
        }
    }
    
}

protocol ItemUpdateDeligate {
    func addNewItem(item: ListItem)
}
