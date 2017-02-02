//
//  ClassB.m
//  learn_objc
//
//  Created by 灵游科技 on 17/2/3.
//  Copyright © 2017年 灵游科技. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClassA.h"
#import "ClassB.h"

@implementation ClassB;

-(void) showMe
{
    NSLog(@"ClassB call ClassA's ShowMe.");
    [classA showMe];
    NSLog(@"ClassB call end.");
}
-(void) setClassA : (ClassA*)p1
{
    classA = p1;
}

@end