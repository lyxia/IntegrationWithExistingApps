//
//  ViewController.swift
//  IntegrationWithExistingApps
//
//  Created by lyxia on 2017/1/5.
//  Copyright © 2017年 lyxia. All rights reserved.
//

import UIKit
import React

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func enterHighScoreScene(_ sender: Any) {
        print("Hello")
        let jsCodeLocation = URL(string: "http://localhost:8081/index.ios.bundle?platform=ios&dev=true")
        let mockData = ["scores":
            [
                ["name": "Alex", "value": "42"],
                ["name": "Joel", "value": "10"]
            ]
        ]
        let rootView = RCTRootView(bundleURL: jsCodeLocation!, moduleName: "IntegrationWithExistingApps", initialProperties: mockData, launchOptions: nil)
        let vc = UIViewController()
        vc.view = rootView
        self.present(vc, animated: true, completion: nil)
    }
}

