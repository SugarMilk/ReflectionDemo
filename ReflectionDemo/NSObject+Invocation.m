//
//  NSObject+Invocation.m
//  ReflectionDemo
//
//  Created by huangjian on 16/12/1.
//  Copyright © 2016年 bojoy. All rights reserved.
//

#import "NSObject+Invocation.h"

@implementation NSObject (Invocation)


/**
 <#Description#>

 @param aSelector <#aSelector description#>
 @param objects <#objects description#>
 @return <#return value description#>
 */
- (id)performSelector:(SEL)aSelector withObjects:(NSArray *)objects {

    NSMethodSignature *signature = [[self class] instanceMethodSignatureForSelector:aSelector];
    
    if (signature == nil) {
        NSString * reason = [NSString stringWithFormat:@"- [%@ %@]:unrecognized selector sent to instance",
                                   [self class], NSStringFromSelector(aSelector)];
        @throw [[NSException alloc] initWithName:@"Method doesn't exist." reason:reason userInfo:nil];
        return nil;
    }
    
    NSInvocation * invocation = [NSInvocation invocationWithMethodSignature:signature];
    invocation.target = self;
    invocation.selector = aSelector;
    
    NSUInteger argumentsCount = signature.numberOfArguments - 2;
    NSUInteger objectsCount = objects.count;
    NSUInteger count = MIN(argumentsCount, objectsCount);
    
    for (int i = 0; i < count; i++) {
        NSObject * obj = objects[i];
        
        if ([obj isMemberOfClass:[NSObject class]]) {
            obj = nil;
        }
        
        [invocation setArgument:&obj atIndex:i + 2];
    }
    
    [invocation invoke];
    
    id res = nil;
    if (signature.methodReturnLength != 0) {
        [invocation getReturnValue:&res];
    }
    
    return res;
}

@end
