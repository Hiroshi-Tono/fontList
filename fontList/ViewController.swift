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
        // 自作したセルオブジェクトを作ります
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        // タグ番号でオブジェクトにアクセスできたら、文字を表示します
        if let label1 = cell.viewWithTag(1) as? UILabel {
            label1.text = "こんにちは"
        }
        return cell
    }
}

