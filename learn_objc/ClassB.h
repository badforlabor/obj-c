//
//  ClassB.h
//  learn_objc
//
//  Created by 灵游科技 on 17/2/3.
//  Copyright © 2017年 灵游科技. All rights reserved.
//

@class ClassA;

@interface ClassB : NSObject
{
    ClassA* classA;
}
- (void) showMe;
- (void) setClassA :(ClassA*)p1;
@end
