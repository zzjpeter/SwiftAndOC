//
//  SwiftClass1.swift
//  SwiftAndOC
//
//  Created by zhuzj on 2018/6/22.
//  Copyright © 2018年 zhuzj. All rights reserved.
//
//  SwiftClass1.swift 类中的代码,这里边只是添加了一个函数,OC的类会调用这个方法
import UIKit

class SwiftClass1: NSObject {
    @objc(sayHello:)
    func sayHello(_ name:String) -> String {
        let greeting = "Hello" + name + "!"
        return greeting
    }
}
