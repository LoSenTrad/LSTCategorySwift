//
//  LSTArray.swift
//  LSTCategorySwift
//
//  Created by LoSenTrad on 2021/5/18.
//

import Foundation
import YYModel


extension Array  {
    
//    /** json数组转模型数组 依赖YYMoJdel */
//    - (NSArray *)lst_JsonArrFormatToModel:(Class)className {
//
//    //    Class modelClass = NSClassFromString(className);
//
//        NSMutableArray *tempMarr = [NSMutableArray array];
//        for (int i = 0; i<self.count; i++) {
//
//
//            NSObject *model = [className yy_modelWithJSON:self[i]];
//
//            [tempMarr addObject:model];
//        }
//
//        return tempMarr.copy;
//
//    }
    
    public func lst_JsonArrToModelArr(className: AnyClass) -> Array {
        var tMarr = NSMutableArray.init()
        for value in self {
            let model = className.yy_model(withJSON: value)
            tMarr.add(model)
        }
        return tMarr.copy() as! Array<Element>
    }
}
