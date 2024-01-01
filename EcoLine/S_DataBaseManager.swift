//
//  DataBaseManager.swift
//  EcoLine
//
//  Created by inprof on 2023/12/30.
//  Copyright © 2023 Inprof. All rights reserved.
//
//データベース処理用メソッド管理クラス


import Foundation
import SQLite3

class DataBaseManager{
    static func allDelete(){
        
        do{
            //シングルトンパターンのインスタンス
            let fileManager = FileManager.default
            
            //urlsメソッドを使ってデータの場所を取得する　　配列[]で返してくる
            let urls = fileManager.urls(for: .documentDirectory, in: .userDomainMask)
            
            //ドキュメントディレクトリーは基本一つなので０番目を指定する
            let documentDirectory = urls[0] as URL
            
            let dbPath = documentDirectory.appendingPathComponent("mydatabase.db").path
            
            let nowDate = Date()
            
            let query = "DELETE FROM EcoLineDB WHERE LIMIT_TIME <= ?;"
            /*
            var db: OpaquePointer?
            // データベースに接続
            if sqlite3_open(dbPath, &db) == SQLITE_OK {
                // 現在の日時を取得
                let nowDate = Date()
                // DateFormatterを使って文字列に変換
                let formatter = DateFormatter()
                formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
                let dateString = formatter.string(from: nowDate)
                
                // SQLクエリの準備
                let query = "DELETE FROM EcoLineDB WHERE LIMIT_TIME <= ?;"
                var statement: OpaquePointer?
                // SQLクエリのコンパイル
                if sqlite3_prepare_v2(db, query, -1, &statement, nil) == SQLITE_OK {
                    // 現在の日時をバインド
                    sqlite3_bind_text(statement, 1, dateString, -1, nil)
                    
                    // クエリの実行
                    if sqlite3_step(statement) != SQLITE_DONE {
                        let errmsg = String(cString: sqlite3_errmsg(db))
                        print("エラー: \(errmsg)")
                    }
                }
                // ステートメントの解放
                sqlite3_finalize(statement)
            }
            // データベースのクローズ
            sqlite3_close(db)
        }*/
        }
        
        
        
        
        
        
        
        
        
        /*
 　　　　　データベースの接続文字列を変数に入れる
         データベースにコネクションを繋ぐ
         SQLを変数に入れる（現在日時から過去のものをデータベースからデリートする）
         コネクションとSQLでクエリをじっこうする
         */
    }
}
