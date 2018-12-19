//
//  Mediator.swift
//  MediatorPrivatePod
//
//  Created by Kede on 2018/12/19.
//  Copyright © 2018 Clare. All rights reserved.
//

import Foundation
import UIKit

open class Mediator {
    public static let shared = Mediator()
    
    public func targetViewController(module: String?, className: String, params: [String: Any]?) -> UIViewController? {
        guard let module = module, module.count > 0 else {
            // 组件名缺少
            return nil
        }
        
        guard className.count > 0 else {
            return nil
        }
        
        let targetCalssString = "\(module).\(className)"
        
        let sysClass = NSClassFromString(targetCalssString) as? UIViewController.Type
        
        guard let vcClass = sysClass else {
            return nil
        }
        return vcClass.init();
    }
}

/*
 组件名 类名 参数
 */

/**
 解析 => 创建对象 => 返回对象
 
 */

/*
 通过extension 拓展 将具体调用细节private化
 */
