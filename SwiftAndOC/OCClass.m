//
//  OCClass.m
//  SwiftAndOC
//
//  Created by zhuzj on 2018/6/22.
//  Copyright © 2018年 zhuzj. All rights reserved.
//
//  OCClass.m  OC的.m文件,这里实现了两个方法并定义了一个C语言的函数,为了方便对比,方法里实现了block,在这个类中演示:OC调用swift类中的方法
#import "OCClass.h"


#import "SwiftAndOC-Swift.h"
//细心的朋友一定注意到了,项目文件中并没有这个头文件,但实际上项目中是有的,你也可以用command+鼠标左键跳进去查看,是隐藏的,如果你是按照我前边的讲的创建的swift文件,那你在这里是可以导入这个头文件的,格式为"工程名-Swift.h",它就是项目中所有的swift类的头文件.


@implementation OCClass

- (void)desc22{
    //声明block
    int (^p)(int, int);
    //把函数赋值给block
    p = ^(int a, int b){
        return a + b;
    };
    //使用
    int result = p(10, 40);
    NSLog(@"swift调用OC方法输出result:%d\n",result);
    //OC中调用swift函数
    SwiftClass1 *sc = [[SwiftClass1 alloc] init];//创建swift对象
    NSString *str = [sc sayHello:@"zhuzj"];//用swift的对象调用自己的函数(方法)
    
    NSLog(@"OC中调用swift函数输出 %@",str);
}

//定义函数
int sum2(int a, int b) {
    return a + b;
}

+ (void)desc2 {
    //2.声明block
    int(^p)(int, int);
    
    //3.把函数赋值给block
    //p = sum2;
    p = ^(int a, int b){
        return a + b;
    };
    
    //4.使用
    int result = p(10,40);
    printf("swift调用OC方法输出result:%d\n",result);
}


@end
