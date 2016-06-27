//
//  ViewController.swift
//  SuperIntro_Hello
//
//  Created by 有國公裕 on 2016/06/26.
//  Copyright © 2016年 js3foo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let deviceName = UIDevice.currentDevice().modelName
    let deviceVersion = UIDevice.currentDevice().systemVersion
    @IBOutlet weak var azAppLabel: UILabel!
    @IBOutlet weak var azDeviceLabel: UILabel!
    @IBAction func azAppSaySomething() {
        //
        switch azAppLabel.text! {   // ラベルの｢.text｣プロパティは、値無しの｢nil｣を許す、オプショナルString型！！！
        case "Label":           azAppLabel.text = "こんちわ！"           // この行の行間幅が合っていない！
                                azDeviceLabel.text = "Device"
        case "こんちわ！":       azAppLabel.text = "Hello World!"        // この行のazAppLabelは先頭の面も行間幅も合っていない！
        case "Hello World!":    azAppLabel.text = "Hey, what's up?"     // この行のコメントは先頭の面も行間幅も合っていない！
        case "Hey, what's up?": azAppLabel.text = "どったの？"           // この行の行間幅が合っていない！
        default:                azAppLabel.text = "Label"               // この行のコメントは先頭の面も行間幅も合っていない！
                                azDeviceLabel.text = "\(deviceName) (\(deviceVersion))"
            // 行内に日本語文字(UTF-16??)が入ると、行間が2ポイントほど広がり、タブが合わなくなる。
            // Swiftの日本語文字は、等幅文字じゃないの？？　何か変！！！　　Apple！　頑張れ！！
        }
        /*
        if azAppLabel.text == "Label" { azAppLabel.text = "こんちわ！" }
        else if azAppLabel.text == "こんちわ！" { azAppLabel.text = "Hello World!" }
        else if azAppLabel.text == "Hello World!" { azAppLabel.text = "Hey, what's up?" }
        else if azAppLabel.text == "Hey, what's up?" { azAppLabel.text = "どったの？" }
        else { azAppLabel.text = "Label" }
        */
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

