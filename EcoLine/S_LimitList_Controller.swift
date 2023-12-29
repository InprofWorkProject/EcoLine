//
//  ItemList_s_Controller.swift
//  EcoLine
//
//  Created by inprof on 2023/12/29.
//  Copyright © 2023 Inprof. All rights reserved.
//

import Foundation
import UIKit

class LimitListController : UIViewController{
    @IBOutlet var ListTable: [UITableView]!
    @IBOutlet weak var UpperNav: UINavigationBar!
    @IBOutlet weak var LowerNav: UINavigationBar!
    @IBOutlet var PanGesture: UIPanGestureRecognizer!
    @IBOutlet weak var ReturnBottun: UIBarButtonItem!
    @IBOutlet weak var SortListButton: UIBarButtonItem!
    @IBOutlet weak var DeleteSelectButton: UIBarButtonItem!
    @IBOutlet weak var TitleButton: UIButton!
    @IBOutlet weak var FooterButton: UINavigationItem!
    @IBOutlet var AllDeleteButton: UIBarButtonItem!
    
    override func viewDidLoad() {
       
        super.viewDidLoad()
        
        ReturnBottun.title = "<"
        
        SortListButton.title = "並び替え"
        
        TitleButton.setTitle("EcoLine", for: .normal)
        
        DeleteSelectButton.title = "選択消去"
        
        FooterButton.title = ""
        
        AllDeleteButton.title = "一括消去"
        
        
    }
}
