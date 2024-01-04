//
//  ViewController.swift
//  EcoLine
//
//  Created by inprof on 2023/12/28.
//  Copyright © 2023 Inprof. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var registerConfigButton: UIButton!
    @IBOutlet weak var screenConfigButton: UIButton!
    @IBOutlet weak var expiredConfigButton: UIButton!
    
    override func viewDidLayoutSubviews() {
        print(#function)
   
        super.viewDidLayoutSubviews()
            configRadiusButton()
    }
    private func configRadiusButton() {
        registerConfigButton.layer.cornerRadius = 5.0
        registerConfigButton.layer.borderColor = UIColor.black.cgColor
        registerConfigButton.layer.borderWidth = 2.0
        
        screenConfigButton.layer.cornerRadius = 5.0
        screenConfigButton.layer.borderColor = UIColor.black.cgColor
        screenConfigButton.layer.borderWidth = 2.0
        
        expiredConfigButton.layer.cornerRadius = 5.0
        expiredConfigButton.layer.borderColor = UIColor.black.cgColor
        expiredConfigButton.layer.borderWidth = 2.0
    }

    @IBAction func tapButtonRegister(_ sender: Any) {
        let storyboaad: UIStoryboard = UIStoryboard(name: "next1", bundle: nil)
        
        let nextView1 = storyboard.instantiateInitialViewController(withIdenitifier:"camera") as! cameraViewController
        
        self.navigationController?.pushuviewController(nextView1, animated: true)
    }
    
    @IBAction func tapButtonScreen(_ sender: Any) {
        let storyboard: UIStoryboard = UIStoryboard(name: "next2", bundle: nil)
        let nextView2 = storyboard.instantiateInitialViewController(withIdentifier: "screen") as! screenViewController
        
        self.navigationController?.pushuviewController(nextView2, animated: true)
    }
    @IBAction func tapButtonExpired(_ sender: Any) {
        let storyborad: UIStoryboard = UIStoryboard(name: "next3", bundle: nil)
        
        let nextViwe3 = storyboard?.instantiateInitialViewController(withIdentifier: "expired") as! screenViewController
        
        self.navigationController?.pushuviewController(nextViwe3, animated: true)
    }
}

