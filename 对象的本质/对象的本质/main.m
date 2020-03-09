//
//  main.m
//  对象的本质
//
//  Created by Alan on 3/9/20.
//  Copyright © 2020 zhaixingzhi. All rights reserved.
//

#import <Foundation/Foundation.h>
//对象-->编译后-->结构体  父类会继承过来
@interface XZPerson : NSObject{
//   成员变量
    NSString *nickName;
//    XZPerson *person; // 实例变量  成员变量 : 底层编译不会生成相应的 setter getter
}
@property (nonatomic, copy) NSString *name;// 属性的区别，底层会生成setgetter方法
@end

@implementation XZPerson


@end
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        XZPerson *p = [XZPerson alloc];
        NSLog(@"hello world");
    }
    return 0;
}
