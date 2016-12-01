//
//  Calculate.m
//  ReflectionDemo
//
//  Created by huangjian on 16/12/1.
//  Copyright © 2016年 bojoy. All rights reserved.
//

#import "Calculate.h"
#import "Operation.h"

@implementation Calculate

+ (float)calculateWithNumber1:(float)number1 number2:(float)number2 operators:(NSString *)operators {
    
    Class class = NSClassFromString(operators);
    
    NSAssert(class, [operators stringByAppendingString:@" can not be reflected."]);
    
    Operation *operation = [[class alloc] initWithNumebr1:number1 number2:number2];

    return [operation operate];
}

@end
