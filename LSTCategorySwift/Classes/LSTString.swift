//
//  LSTString.swift
//  LSTCategory
//
//  Created by LoSenTrad on 2021/4/29.
//

import Foundation


extension String  {
    
    public func stringToURL() -> URL {
        return URL.init(string: self)!
    }
    
    public func lst_getWidth(font: UIFont) -> CGFloat {
        let lab = UILabel.init(frame: CGRect(x: 0, y: 0, width: 1000, height: 0))
        lab.text = self
        lab.font = font
        lab.sizeToFit()
        return lab.frame.size.width
    }
    
}
