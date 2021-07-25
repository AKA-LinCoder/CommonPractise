//
//  extensions.swift
//  CommonPractise
//
//  Created by lsaac on 2021/7/25.
//

import Foundation
import UIKit

extension String{
    
    /// 去掉字符串首尾的空格
    var removeHeadAndEndSpace:String{
        let whitespace = NSCharacterSet.whitespaces
        return self.trimmingCharacters(in: whitespace)
    }
}
