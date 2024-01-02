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
            
            //urlsメソッドを使ってデータベースの場所を取得する　　配列[]で返してくる
            let urls = fileManager.urls(for: .documentDirectory, in: .userDomainMask)
            
            //ドキュメントディレクトリーは基本一つなので０番目を指定する
            let documentDirectory = urls[0] as URL
            
            //最終てきに出来上がったパス
            let dbPath = documentDirectory.appendingPathComponent("mydatabase.db").path
            
            
            //データベース接続をひ保持するための入れ物
            var dbPointer :OpaquePointer?
            
            
            //実際に接続していく処理                   接続がokだったら
            if sqlite3_open(dbPath, &dbPointer) == SQLITE_OK{
                
                
                let nowDate = Date()
                //日付のデータはそのままだと使えないのでフォーマットする
                let formatter = DateFormatter()
                formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
                let dateString = formatter.string(from: nowDate)
                
                //SQLインジェクション対策が必要　　　　　　　　　　　　　　　　  「？」はプレースホルダー
                let query = "DELETE FROM EcoLineDB WHERE LIMIT_TIME <= ?;"
                
                var statementCommand: OpaquePointer?
                
                
                //実際に使うクエリをここで作る     SQL文の文字列の最後まで読み込む意味の-1
                if sqlite3_prepare_v2(dbPointer, query, -1, &statementCommand, nil) == SQLITE_OK{
                    
                    //現在日時を使える状態にする　　　　SQLのプレースホルダーに入るものの設定もここでやる
                    sqlite3_bind_text(statementCommand, 1, dateString, -1, nil )
                    
                    //クエリを実行する　　sqlite3_stepこのメソッドはDBの挿入、更新、削除の処理ができる
                    //エラーが出て実行できなかったらエラ〜チェックする
                    if sqlite3_step(statementCommand) != SQLITE_DONE{
                        
                        //C言語をsSwift言語にほんやくするための処理　エラーの出力はC言語で返ってくる
                        let errMessage = String(cString: sqlite3_errmsg(dbPointer))
                        print("クエリ実行error: \(errMessage)")
                    }
                }
                else{
                    let errMessage = String(cString: sqlite3_errmsg(dbPointer))
                    print("クエリ生成error: \(errMessage)")
                }
                //ステートメントの解放
                sqlite3_finalize(statementCommand)
            }
            else{
                let errMessage = String(cString: sqlite3_errmsg(dbPointer))
                print("データベース接続error: \(errMessage)")
            }
            //DataBaseの接続をクローズする
            sqlite3_close(dbPointer)
            
        }
    }
}
