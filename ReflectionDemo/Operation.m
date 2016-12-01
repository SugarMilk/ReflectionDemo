//
//  Operation.m
//  ReflectionDemo
//
//  Created by huangjian on 16/12/1.
//  Copyright © 2016年 bojoy. All rights reserved.
//

#import "Operation.h"

@implementation Operation

- (instancetype)initWithNumebr1:(float)number1 number2:(float)number2 {
    if (self = [super init]) {
        self.number1 = number1;
        self.number2 = number2;
    }
    return self;
}

-(float)operate {
    return 0;
}

@end
