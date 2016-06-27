//
//  azAppViewController.swift
//  SuperIntro_Hello
//
//  Created by 有國公裕 on 2016/06/26.
//  Copyright © 2016年 js3foo. All rights reserved.
//
/*
 構成:  標準で自動作成されるファイル(ViewController.swift, ViewControllerクラス)は触らないで、
      AzAppViewControllerクラス(AzAppViewControllerファイル)ViewControllerクラスのサブクラスを作成し、
      そこでプログラムを書く。
        Main.storyboardを見て解る通り、右ユーティリティ•エリアのアイデンティティ•インスペクタで、カスタム•クラスに
      表示されるクラスは、AzAppViewControllerが表示される。モジュールはSuperIntro_Helloをそのまま使う。
 
 */
import UIKit

class AzAppViewController: ViewController {
    @IBOutlet weak var azLabel: UILabel!
    @IBAction func saySomething() {
        azLabel.text = "こんにちわ！"
    }
}