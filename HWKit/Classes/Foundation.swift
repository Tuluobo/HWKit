//
//  Foundation.swift
//  Pods
//
//  Created by Hao Wang on 26/08/2017.
//
//

import Foundation

// MARK: - 汉子转拼音相关方法
extension String {
    
    /// 判断 String 中是否有汉字
    public var hasIncludeChinese: Bool {
        for ch in self.unicodeScalars {
            // 中文字符范围：0x4e00 ~ 0x9fff
            if (0x4e00 < ch.value && ch.value < 0x9fff) {
                return true
            }
        }
        return false
    }
    
    /// 有音标的拼音
    public var pinyinWithStrip: String {
        let stringRef = NSMutableString(string: self) as CFMutableString
        // 转换为带音标的拼音
        CFStringTransform(stringRef,nil, kCFStringTransformToLatin, false)
        return stringRef as String
    }
    
    /// 没有音标的拼音
    public var pinyinWithoutStrip: String {
        let stringRef = NSMutableString(string: self.pinyinWithStrip) as CFMutableString
        // 去掉音标
        CFStringTransform(stringRef, nil, kCFStringTransformStripCombiningMarks, false)
        return stringRef as String
    }
    
    /// 没有空格的拼音
    public var pinyinWithoutBlank: String {
        return self.pinyinWithoutStrip.replacingOccurrences(of: " ", with: "")
    }
    
    /// 拼音的首字母
    public var pinyinHead: String {
        // 字符串转换为首字母大写
        let pinyin = self.pinyinWithoutStrip.capitalized
        var headPinyinStr = ""
        // 获取所有大写字母
        for ch in pinyin.characters {
            if ch <= "Z" && ch >= "A" {
                headPinyinStr.append(ch)
            }
        }
        return headPinyinStr
    }
    
    // TODO: 
    public func addSpaceToEnglishAndChinese() -> String {
        fatalError()
    }
    
}
