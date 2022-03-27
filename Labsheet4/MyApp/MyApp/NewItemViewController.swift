//
//  NewItemViewController.swift
//  MyApp
//
//  Created by Interactive Media on 3/12/22.
//  Copyright © 2022 Interactive Media. All rights reserved.
//

import UIKit

class NewItemViewController: UIViewController {
    
    
    @IBOutlet weak var txtIemId: UITextField!
    @IBOutlet weak var txtItemTitle: UITextField!
    @IBOutlet weak var txtItemSubTitle: UITextField!
    @IBOutlet weak var btnAddItem: UIButton!
    @IBOutlet weak var btnUpdateItem: UIButton!
    
    var deligate: ItemUpdateDeligate?
    
    var selectedItem: ListItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnAddItem.layer.borderColor = UIColor.blue.cgColor
        btnAddItem.layer.borderWidth = 1
        
        if isEditing {
            self.btnAddItem.isHidden = true
            self.btnUpdateItem.isHidden = false
            
            self.txtIemId.text = selectedItem?.lid
            self.txtItemTitle.text = selectedItem?.listTitle
            self.txtItemSubTitle.text = selectedItem?.listSubTitile
        }
    }
    
    @IBAction func addItemClick(_ sender: Any) {
        print("Create Process")
        
        let itemId: String = txtIemId.text ?? ""
        let itemTitle: String = txtItemTitle.text ?? ""
        let itemSubTitle: String = txtItemSubTitle.text ?? ""
        
        let newItem = ListItem.init(lid: itemId, title: itemTitle, subTitle: itemSubTitle)
        print("Item Initialized: \(newItem.lid)")
        
        deligate?.addNewItem(item: newItem)
        
        print("Item Created!")
        
        txtIemId.text = ""
        txtItemTitle.text = ""
        txtItemSubTitle.text = ""
    }
    
    
    @IBAction func updateItemClick(_ sender: Any) {
        let itemId: String = txtIemId.text ?? ""
        let itemTitle: String = txtItemTitle.text ?? ""
        let itemSubTitle: String = txtItemSubTitle.text ?? ""
        
        let newItem = ListItem.init(lid: itemId, title: itemTitle, subTitle: itemSubTitle)
        
        NotificationCenter.default.post(name: Notification.Name(rawValue: "UpdateData"), object: nil, userInfo: ["itemObject":newItem])
        
        print("Item Updated!")
        
        // Navigate to the List after updating content
        self.navigationController?.popViewController(animated: true)
    }
}
