//
//  SegueManager.swift
//  EcoLine
//
//  Created by inprof on 2023/12/31.
//  Copyright © 2023 Inprof. All rights reserved.
//

import Foundation
import UIKit

class SegueManager{
    //                      　　　　遷移先                             遷移元
    static func toNextView(toNext toPresent: UIViewController, from fromPresent: UIViewController){
        fromPresent.present(toPresent, animated: true, completion: nil)
        //呼び出して画面遷移させるメソッド
    }
}
