//
//  deleteConfirmViewController.swift
//  EcoLine
//
//  Created by user on 2024/01/02.
//  Copyright © 2024年 Inprof. All rights reserved.
//

import Foundation
import SQLite

class deleteConfirmViewController: UIViewController {
    
    var receivedData: String?

    @IBOutlet weak var deleteTextView: UITextView!
    @IBOutlet weak var deleteButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
            }
        }
        
        configTextView()
        configButton()
        // Do any additional setup after loading the view.
    }
    
    private func configTextView(){
        deleteTextView.layer.borderColor = UIColor.black.cgColor
        deleteTextView.layer.borderWidth = 2.0
    }
    
    private func configButton(){
        deleteButton.layer.cornerRadius = 5.0
        deleteButton.layer.borderColor = UIColor.black.cgColor
        deleteButton.layer.borderWidth = 2.0
    }
    @IBAction func deleteButton(_ sender: UIButton) {
        DataBaseManager.init()
        if let ID = fetchDataFromDatabase() {
            if receivedData == ID {
                
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
