//
//  main.m
//  learn_objc
//
//  Created by 灵游科技 on 17/2/2.
//  Copyright © 2017年 灵游科技. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ClassA.h"
#import "ClassB.h"

int main(int argc, const char * argv[]) {
    
    // 也可以这样调用，相当于new
    //ClassA* pa = [[ClassA alloc] init];
    ClassA* pa = [ClassA alloc];
    pa.fullName = @"aaa";
    [pa showMe];
    [pa showMe:5];
    [pa showMe:5 :1.0];
    // 可以这么调用！
    [pa showMe:5.0 :'a'];
    [pa showComplexMe:5 pf:1 pb:YES];
    
    [ClassA staticShowMe];
    [ClassA staticSet:3];
    [ClassA staticShowMe];
    
    ClassB* pb = [ClassB new];
    [pb setClassA:pa];
    [pb showMe];
    
    // 销毁（其实没销毁，obj-c自动垃圾回收）
    pa = nil;
    // 销毁之后，即便调用也不会导致崩溃。
    [pa showMe];
    
    // 看这里，这里依然会调用ClassA的showMe函数！
    [pb showMe];
    
    return 0;
}
