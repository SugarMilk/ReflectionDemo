//
//  Operation.h
//  ReflectionDemo
//
//  Created by huangjian on 16/12/1.
//  Copyright © 2016年 bojoy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Operation : NSObject

@property (nonatomic) float number1;
@property (nonatomic) float number2;

- (instancetype)initWithNumebr1:(float)number1 number2:(float)number2;

- (float)operate;

@end
