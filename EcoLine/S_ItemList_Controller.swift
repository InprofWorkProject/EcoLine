//
//  ItemList_s_Controller.swift
//  EcoLine
//
//  Created by inprof on 2023/12/29.
//  Copyright © 2023 Inprof. All rights reserved.
//

import Foundation
import UIKit

class ItemListController : UIViewController,  UITableViewDelegate, UITableViewDataSource{
    @IBOutlet weak var ListTable: UITableView!
    @IBOutlet weak var UpperNav: UINavigationBar!
    @IBOutlet weak var LowerNav: UINavigationBar!
    @IBOutlet var PanGesture: UIPanGestureRecognizer!
    @IBOutlet weak var ReturnBottun: UIBarButtonItem!
    @IBOutlet weak var SortListButton: UIBarButtonItem!
    @IBOutlet weak var DeleteSelectButton: UIBarButtonItem!
    @IBOutlet weak var TitleButton: UIButton!
    @IBOutlet weak var FooterButton: UINavigationItem!
    
    //仮のデータ
      var data = [1,2,3]
    
    override func viewDidLoad() {
       
        super.viewDidLoad()
        
        ReturnBottun.title = "<"
        SortListButton.title = "並びs替え"
        TitleButton.setTitle("EcoLine", for: .normal)
        DeleteSelectButton.title = "選択消去"
        FooterButton.title = ""
        
    }
    
    //定義する処理をコメントで書いておく
    
    
    //データの表示
    //--------------------------------------------------------------------
    //データベースからにアクセスする
    //データベースからデータを取得する
    //テーブルリストのインスタンスにデータを渡す
    //テーブルに表示する
    //-------------------------------------------------------------------
    
    
    //選択遷移
    //-------------------------------------------------------------------
    //タップされた行のユニークなデータを取得する
    //タップされたデータのフルデータを取得する
    //次の画面のコントローラーに渡す
    //画面遷移にするメソッドを呼びだす
    //画面遷移する
    //SegueManager.toNextView(toNext: detailViewController, from: self)
    //-------------------------------------------------------------------
    
    
    //選択消去
    //-------------------------------------------------------------------
    //選択消去のボタンが押されたイベントを受け取る
    //選択消去用のチェックボックスをテーブルに表示する
    //チェックの入ったデータを取得する
    //SQLに主キーのデータを渡す
    //削除ボタンのイベントを受け取る
    //削除の確認してポップアップを出す
    //SQLを実行する
    //削除後のデータをテーブルに再標準させる
    //-------------------------------------------------------------------
    
    
    
    //仮のメソッド（コンパイルエラーを消えるか試すため）
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // テーブルビューのセルの数を返します。
        return data.count
    }
    //仮のメソッド
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // テーブルビューのセルを設定します。
        let cell = tableView.dequeueReusableCell(withIdentifier: "YourCellIdentifier", for: indexPath)
        // ここでセルにデータを設定する
        return cell
    }

}

