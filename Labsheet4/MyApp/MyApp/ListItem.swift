//
//  ListItem.swift
//  MyApp
//
//  Created by Interactive Media on 3/12/22.
//  Copyright © 2022 Interactive Media. All rights reserved.
//

import UIKit

class ListItem: NSObject {
    var lid: String
    var listTitle: String
    var listSubTitile: String
    
    override init() {
        self.lid = ""
        self.listTitle = ""
        self.listSubTitile = ""
    }
    
    init(lid: String, title: String, subTitle: String) {
        self.lid = lid
        self.listTitle = title
        self.listSubTitile = subTitle
    }
}
