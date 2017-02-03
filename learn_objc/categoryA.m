//
//  categoryA.m
//  learn_objc
//
//  Created by 灵游科技 on 17/2/3.
//  Copyright © 2017年 灵游科技. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClassA.h"

@implementation ClassA (CategoryA)

// 厉害，这个将强制覆盖ClassA的showMe函数。
-(void) showMe
{
    NSLog(@"I am category");
}
-(void) showCategoryMe
{
    NSLog(@"I am category. showCategoryMe");
}

@end