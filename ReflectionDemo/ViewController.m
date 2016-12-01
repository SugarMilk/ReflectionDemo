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
#import "NSObject+Invocation.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self performSelector:@selector(testWithStringA:stringB:stringC:) withObjects:@[@"a", NSLL, @"c"]];
    
}

- (void)test {
    
    CGFloat result = [Calculate calculateWithNumber1:6 number2:8 operators:@"Subtraction"];
    
    NSLog(@"result:  %f", result);
}

- (void)testWithStringA:(NSString *)stringA stringB:(NSString *)stringB stringC:(NSString *)stringC {
    
    NSString * value = [NSString stringWithFormat:@"%@ / %@ / %@", stringA, stringB, stringC];
    
    NSLog(@"value:  %@", value);
}

@end
