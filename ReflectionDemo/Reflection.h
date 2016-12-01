//
//  Reflection.h
//  ReflectionDemo
//
//  Created by huangjian on 16/12/1.
//  Copyright © 2016年 bojoy. All rights reserved.
//

#ifndef Reflection_h
#define Reflection_h

~ 动态类型（Dynamic typing） ：  程序直到执行时才能确定所属的类
~ 动态绑定（Dynamic binding）：  程序直到执行时才能确定实际要调用的方法
~ 动态加载（Dynamic loading）：  动态加载符合的资源文件

多态的出现时为了让不同的类能使用同名的方法。这个让程序的可读性大大提高，也降低了编程难度。
动态类型与动态绑定是为了解决随多态的便利而引起的弊端，有了动态类型与动态绑定，不用去考虑输出中的方法是哪个类型的方法，会自动判定。
而id类型的出现就是为了更好的承接动态类型与动态方法出来的返回值。

~ 运行时：Runtime
~ 反射，反射是基于OC的动态特性和运行时特性实现的


反射是指程序可以访问、检测和修改它本身状态或行为的一种能力

程序集包含模块，而模块包含类型，类型又包含成员。反射则提供了封装程序集、模块和类型的对象。
您可以使用反射动态地创建类型的实例，将类型绑定到现有对象，或从现有对象中获取类型。然后，可以调用类型的方法或访问其字段和属性。

———— 百度百科

类的反射：实例化对象

Class class = NSClassFromString(@"Student");

方法的反射：动态调用方法
SEL sel = NSSelectorFromString(@"setName:");

- (BOOL)isKindOfClass:(Class)aClass;        判断一个对象是否是aClass的实例或者aClass的子类实例，比如[[UILabel new] isKindOfClass:[NSObject class]];
- (BOOL)isMemberOfClass:(Class)aClass;      判断一个对象是否是aClass的实例，比如[[UILabel new] isMemberOfClass:[UILabel class]];

- (BOOL)conformsToProtocol:(Protocol *)aProtocol;   判断一个对象的类是否遵守了指定的协议(可能没实现协议方法)，若父类符合协议，则其亦符合

- (BOOL)respondsToSelector:(SEL)aSelector;          判断一个对象的类是否实现了指定的方法(仅仅声明不行的)

动态调用对象的方法：
- (id)performSelector:(SEL)aSelector;
- (id)performSelector:(SEL)aSelector withObject:(id)object;
- (id)performSelector:(SEL)aSelector withObject:(id)object1 withObject:(id)object2;














#endif /* Reflection_h */
