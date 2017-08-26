//
//  ViewController.swift
//  HWKit
//
//  Created by Tuluobo on 08/26/2017.
//  Copyright (c) 2017 Tuluobo. All rights reserved.
//

import UIKit
import HWKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let str = "我爱Swift"
        let str2 = "Hello Swift"
        
        
        str.characters.map { print($0) }
        str.unicodeScalars.map { print($0) }
        
        print(str.hasIncludeChinese)
        print(str2.hasIncludeChinese)
        
        print(str.pinyinWithStrip)
        print(str2.pinyinWithStrip)
        
        print(str.pinyinWithoutStrip)
        print(str2.pinyinWithoutStrip)
        
        print(str.pinyinWithoutBlank)
        print(str2.pinyinWithoutBlank)
        
        print(str.pinyinHead)
        print(str2.pinyinHead)
        
    }

}

