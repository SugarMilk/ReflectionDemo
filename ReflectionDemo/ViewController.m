//
//  ViewController.m
//  ReflectionDemo
//
//  Created by huangjian on 16/12/1.
//  Copyright © 2016年 bojoy. All rights reserved.
//

#import "ViewController.h"
#import "Calculate.h"
#import "Operation.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSObject

    Operation * oper = [Operation new];
    
    BOOL value = [oper respondsToSelector:@selector(operate)];
    
    NSLog(@"value:  %d", value);
}

- (void)test {
    
    CGFloat result = [Calculate calculateWithNumber1:6 number2:8 operators:@"Subtraction"];
    
    NSLog(@"result:  %f", result);
}

@end
