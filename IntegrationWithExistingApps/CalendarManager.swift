//
//  CalendarManager.swift
//  IntegrationWithExistingApps
//
//  Created by lyxia on 2017/1/5.
//  Copyright © 2017年 lyxia. All rights reserved.
//

import Foundation
import UIKit
import React

@objc(CalendarManager) class CalendarManager: NSObject{
    @objc func doSomething(string: String, withFoo a:Int, bar b:Int) {
        print("\(string)-\(a)-\(b)")
    }
}
