//
//  LSTString.swift
//  LSTCategory
//
//  Created by LoSenTrad on 2021/4/29.
//

import Foundation


extension String  {
    
    /// String 转 URL
    public func lst_stringToURL() -> URL? {
        return URL.init(string: self)
    }
    /// 获取文本宽度
    public func lst_getWidth(font: UIFont) -> CGFloat {
        let lab = UILabel.init(frame: CGRect(x: 0, y: 0, width: 1000, height: 0))
        lab.text = self
        lab.font = font
        lab.sizeToFit()
        return lab.frame.size.width
    }
    /// 获取文本高度
    public func lst_getHeight(font: UIFont, maxWidth: CGFloat) -> CGFloat {
        let lab = UILabel.init(frame: CGRect(x: 0, y: 0, width: maxWidth, height: 0))
        lab.text = self
        lab.font = font
        lab.numberOfLines = 0
        lab.sizeToFit()
        let h = lab.frame.size.height
        return h
    }
}
