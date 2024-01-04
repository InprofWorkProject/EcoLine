//
//  OneItemViewController.swift
//  EcoLine
//
//  Created by inprof on 2023/12/30.
//  Copyright © 2023 Inprof. All rights reserved.
//

import Foundation
import UIKit

class OneItemViewController : UIViewController{
    @IBOutlet weak var UpperNavBar: UINavigationBar!
    @IBOutlet weak var UpRigthButton: UIBarButtonItem!
    @IBOutlet weak var UpCenterButton: UIButton!
    @IBOutlet weak var UpLeftButton: UIBarButtonItem!
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var DateLabel: UILabel!
    @IBOutlet weak var LowerNavBar: UINavigationItem!
    @IBOutlet weak var LowRightButton: UIBarButtonItem!
    @IBOutlet weak var LowLeftButton: UIBarButtonItem!
    
    
    override func viewDidLoad() {
        NameLabel.text = "冷蔵庫の中身"
        DateLabel.text = "2024-01-04"
        
    }
}
