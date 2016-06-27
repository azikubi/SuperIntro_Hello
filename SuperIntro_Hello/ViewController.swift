//
//  ViewController.swift
//  SuperIntro_Hello
//
//  Created by 有國公裕 on 2016/06/26.
//  Copyright © 2016年 js3foo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var azAppLabel: UILabel!
    @IBAction func azAppSaySomething() {
        if azAppLabel.text == "Label" { azAppLabel.text = "こんちわ！" }
        else if azAppLabel.text == "こんちわ！" { azAppLabel.text = "Hello World!" }
        else if azAppLabel.text == "Hello World!" { azAppLabel.text = "Hey, what's up?" }
        else if azAppLabel.text == "Hey, what's up?" { azAppLabel.text = "どったの？" }
        else { azAppLabel.text = "Label" }
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

