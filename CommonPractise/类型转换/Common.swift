//
//  Common.swift
//  CommonPractise
//
//  Created by lsaac on 2021/7/25.
//

import Foundation

class Solution{
    func StringToInt(_ str : String) -> Int{
        //判空
        if(str.count == 0){
            return 0
        }
        var s = str
        s = s.removeHeadAndEndSpace
        var first : Character!
        var result : String = ""
        if(s.count > 0){
            first = s.first
            //判断字符串中的第一个空字符串是不是一个有效整数字符
            if(first >= "0" && first <= "9" || first == "+" || first == "-"){
                //获得到字符串的第一位
                result = String(first)
                s.removeFirst()
                for char in s{
                    if(char >= "0" && char <= "9"){
                        result += String(char)
                    }else{
                        break
                    }
                }
            }
        }
        //判断最终字符长是否为空或则只有一个正负号
        if (result.count == 0 || result == "+" || result == "-") {
            return 0
        }
        //判断结果是否超出边界
        if(result as NSString).integerValue > 2147483647 {
            return 2147483647
        }else if(result as NSString).integerValue < -2147483647{
            return -2147483647
        }
        return (result as NSString).integerValue
        
    }
    func isPurnInt(s : Character) -> Bool{
        let scan = Scanner.init(string: String.init(s))
        var val : Float = 0
        return scan.scanFloat(&val)&&scan.isAtEnd
    }
    
}
