//
//  ViewController.swift
//  EcoLine
//
//  Created by inprof on 2023/12/28.
//  Copyright © 2023 Inprof. All rights reserved.
//

import UIKit
import Foundation
import SQLite3

class ViewController: UIViewController {
    @IBOutlet weak var dateTextField: UITextField!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var confirmBotton: UIButton!
    
    @IBOutlet weak var backBotton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //hyouzizitennde confirmBotton osenai
        confirmBotton.isEnabled = false
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func textField(_ sender: Any) {
        if nameTextField.text == "" || dateTextField.text == "" {
            confirmBotton.isEnabled = false
        } else {
            confirmBotton.isEnabled = true
            let alert = UIAlertController(
                title: "登録確認",
                message: "入力内容を登録しますか？",
                preferredStyle: .alert
            )
            
            // 登録ボタンの追加
            alert.addAction(UIAlertAction(
                title: "登録",
                style: .default,
                handler: { [weak self] _ in
                    guard let self = self,
                        let name = self.nameTextField.text,
                        let date = self.dateTextField.text,
                        !name.isEmpty,
                        !date.isEmpty else {
                            print("入力が不完全です。")
                            return
                    }
                    
                    // ここからデータベース接続とデータ挿入の処理
                    let fileManager = FileManager.default
                    guard let documentDirectory = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first else {
                        fatalError("ドキュメントディレクトリが見つかりません。")
                    }
                    let dbPath = documentDirectory.appendingPathComponent("mydatabase.db").path
                    
                    var db: OpaquePointer?
                    if sqlite3_open(dbPath, &db) != SQLITE_OK {
                        let errorMessage = String(cString: sqlite3_errmsg(db))
                        fatalError("データベース接続エラー: \(errorMessage)")
                    }
                    
                    let insertQuery = "INSERT INTO EcoLineDB (DATA_NAME, SCHEDULED_DATETIME) VALUES (?, ?);"
                    var insertStatement: OpaquePointer?
                    
                    if sqlite3_prepare_v2(db, insertQuery, -1, &insertStatement, nil) == SQLITE_OK {
                        sqlite3_bind_text(insertStatement, 1, name, -1, nil)
                        sqlite3_bind_text(insertStatement, 2, date, -1, nil)
                        
                        if sqlite3_step(insertStatement) != SQLITE_DONE {
                            let errorMessage = String(cString: sqlite3_errmsg(db))
                            print("挿入エラー: \(errorMessage)")
                        } else {
                            print("データを正常に挿入しました。")
                        }
                    } else {
                        let errorMessage = String(cString: sqlite3_errmsg(db))
                        print("SQL文の準備エラー: \(errorMessage)")
                    }
                    
                    sqlite3_finalize(insertStatement)
                    sqlite3_close(db)
                }
            ))
            
            // キャンセルボタンの追加
            alert.addAction(UIAlertAction(title: "戻る", style: .cancel, handler: nil))
            
            // アラートを表示
            present(alert, animated: true, completion: nil)
        }
 }
}
