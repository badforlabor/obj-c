//
//  ClassA.h
//  learn_objc
//
//  Created by 灵游科技 on 17/2/3.
//  Copyright © 2017年 灵游科技. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol ProtocolA
- (void) showMe;
@end


@interface ClassBase : NSObject <ProtocolA>
{}
@end

// ifndef可以不带
//#ifndef ClassA_h
//#define ClassA_h
@class ClassB;
@interface ClassA : ClassBase
{
    // 这里面只能定义变量！
    int a;
    float b;
    BOOL c;
    ClassB* classB;
}

@property NSString* fullName;

// 覆盖父类方法时，可以声明，也可以不声明！
//- (void) showMe;
- (void) showMe : (int)p1;
// 函数的参数以":"开头
- (void) showMe : (int)p1 :(float)p2;
// 也可以这样定义函数
- (int) showComplexMe : (int)p1 pf:(float)p2 pb:(BOOL)p3;
+ (void) staticShowMe;
+ (void) staticSet : (int)p1;

@end

//#endif /* ClassA_h */
