//
//  ViewController.swift
//  fontList
//
//  Created by 遠野ひろし on 2019/01/03.
//  Copyright © 2019 遠野工房. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    // フォント名を入れる配列（文字列型の配列）を用意します
    var fontName_array:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // フォントファミリー名を全て調べます
        for fontFamilyName in UIFont.familyNames {
            // そのフォントファミリー名が持っているフォント名を全て調べます
            for fontName in UIFont.fontNames(forFamilyName: fontFamilyName as String) {
                // フォント名を配列に追加します
                fontName_array.append(fontName)
            }
        }
    }

    // テーブルビューの行数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fontName_array.count
    }

    // セルの表示内容
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // セルを作ります（2つのラベルを表示できる [.subtitle] ）
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "myCell")
        // このセルに表示するフォント名を取得します
        let fontname = fontName_array[indexPath.row]
        // テキストに、指定したフォントでサンプル文字を表示します
        cell.textLabel?.font = UIFont(name: fontname, size:18)
        cell.textLabel?.text = "ABCDE abcde 012345 あいうえお"
        // サブテキストに、フォント名を表示します
        cell.detailTextLabel?.textColor = UIColor.brown
        cell.detailTextLabel?.text = fontname
        return cell
    }
}

