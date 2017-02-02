//
//  ClassA.m
//  learn_objc
//
//  Created by 灵游科技 on 17/2/3.
//  Copyright © 2017年 灵游科技. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClassA.h"

@implementation ClassBase

- (void) showMe
{}

@end

@implementation ClassA

- (void) showMe
{
    NSLog(@"I am ClassA.");
}
- (void) showMe : (int) p1
{
    NSLog(@"I am ClassA, p1=%d, %@", p1, _fullName);
}
- (void) showMe : (int)p1 : (float)p2
{
    NSLog(@"I am ClassA, p1=%d, p2=%f", p1, p2);
}
- (int) showComplexMe : (int)p1 pf:(float)p2 pb:(BOOL)p3
{
    NSLog(@"I am ClassA, p1=%d, p2=%f, p3=%d", p1, p2, p3);
    return 0;
}

// 静态变量可以设置初始值，不设置默认是0
static int staticMe = 100;
+ (void) staticShowMe
{
    NSLog(@"ClassA's static function, staticMe=%d", staticMe);
}
+(void) staticSet:(int)p1
{
    staticMe = p1;
}

@end