//
//  ViewController.swift
//  CommonPractise
//
//  Created by lsaac on 2021/7/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let str = "-213123.312312salad"
        let f = Solution()
        
        let intVal = f.StringToInt(str)
        print(intVal)
    }


}

