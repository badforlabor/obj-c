//
//  categoryA.h
//  learn_objc
//
//  Created by 灵游科技 on 17/2/3.
//  Copyright © 2017年 灵游科技. All rights reserved.
//

@interface ClassA (CategoryA)
// 不能包含成员变量
// 只能包含成员函数
-(void) showCategoryMe;
@end

