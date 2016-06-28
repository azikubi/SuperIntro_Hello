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
/*
    override func canBecomeFirstResponder() -> Bool {
        return true
    }   // シェイク動作検知準備完了！（シェイク動作のファースト･レスポンダになる）
    override func motionBegan(motion: UIEventSubtype, withEvent event: UIEvent?) {
        if event?.type == UIEventType.Motion && event?.subtype == UIEventSubtype.MotionShake {
            // シェイク動作始り時の処理（軽く振っただけでは、ここしか反応しないそうだ！！）
            azAppLabel.text = "Shaked App Label"
            azDeviceLabel.text = "Shaked Dev Label"
        }
    }
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?) {
        if event?.type == UIEventType.Motion && event?.subtype == UIEventSubtype.MotionShake {
            // シェイク動作終了時の処理
        }
    }
    override func motionCancelled(motion: UIEventSubtype, withEvent event: UIEvent?) {
        if event?.type == UIEventType.Motion && event?.subtype == UIEventSubtype.MotionShake {
            // シェイクキャンセル時の処理
        }
    }
 */
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
        UIDevice.currentDevice().endGeneratingDeviceOrientationNotifications()
    }
    override func viewWillDisappear(animated: Bool) {   // ビューが現れた！！
        UIDevice.currentDevice().endGeneratingDeviceOrientationNotifications()
    }
    override func viewDidAppear(animated: Bool) {   // ビューが現れた！！
        // 通知センター(NSNotificationCenter)へ、向き変化を通知せよ(UIDeviceOrientationDidChangeNotification)と登録 (コールバック関数はonOrientationChange())
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(ViewController.onOrientationChange(_:)), name: UIDeviceOrientationDidChangeNotification, object: nil)
        UIDevice.currentDevice().beginGeneratingDeviceOrientationNotifications()    // 通知を開始せよ！
    }
    func onOrientationChange(notification: NSNotification) {    // iOS端末の向きが変わると呼ばれる関数
        azAppLabel.text = "Shaked Application Label"
        azDeviceLabel.text = "Shaked Device Label"
    }
}

