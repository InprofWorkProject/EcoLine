//
//  ItemList_s_Controller.swift
//  EcoLine
//
//  Created by inprof on 2023/12/29.
//  Copyright © 2023 Inprof. All rights reserved.
//

import Foundation
import UIKit

class ItemListController : UIViewController{
    @IBOutlet var ListTable: [UITableView]!
    @IBOutlet weak var UpperNav: UINavigationBar!
    @IBOutlet weak var LowerNav: UINavigationBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backButtonToNavBar()
    }
    
    func backButtonToNavBar(){
        
    }
}
