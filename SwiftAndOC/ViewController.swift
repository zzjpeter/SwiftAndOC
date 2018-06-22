//
//  ViewController.swift
//  SwiftAndOC
//
//  Created by zhuzj on 2018/6/22.
//  Copyright © 2018年 zhuzj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
         //swift调用oc方法
        OCClass.desc2()
        OCClass().desc22()
        let funOCClass2 = sum2(10, 1)
        print("swift调用OC类中的C函数输出:\(funOCClass2)")
        
        //swift调用c函数(无头文件)
        desc1()
        let funcCClassss = sum1(10, 2)
        print("swift调用没有头文件的C语言类输出:\(funcCClassss)")//12
        
        //swift调用c函数(有头文件)
        desc3()
        let funcCClass33 = sum3(10, 3)
        print("swift调用含有头文件的C语言类输出:\(funcCClass33)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

