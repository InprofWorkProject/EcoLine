//
//  AllDeletePopUp.swift
//  EcoLine
//
//  Created by inprof on 2023/12/30.
//  Copyright © 2023 Inprof. All rights reserved.
//

import Foundation
import UIKit

class AllDeleteAlert{//   　　　　　UIViewController型を引数で受け取る　　deleteするためのアクションここを変更して違うアクションにできる
    static func allDeleteAction(from viewController: UIViewController){
        
        let alertController = UIAlertController(title : "一括削除", message: "一括削除します、よろしいですか？", preferredStyle: .alert)
        //DataBaseManagerクラスから呼び出し  DataBaseManager.allDelete()が一括削除のメソッド
        let  deleteAction = UIAlertAction(title: "削除", style: .destructive){
            _ in DataBaseManager.allDelete()
        }
        alertController.addAction(deleteAction)
        //                                                       nilの場合、戻るボタンを押すとポップアップが閉じられる
        let cancel = UIAlertAction(title: "戻る", style: .cancel, handler: nil)
        alertController.addAction(cancel)
        
        //             モーダル表示させる
        viewController.present(alertController, animated: true, completion: nil)
    }
}

