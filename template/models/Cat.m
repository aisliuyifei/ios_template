//
//  Cat.m
//  template
//
//  Created by wupeng on 09/10/2017.
//  Copyright © 2017 wupeng. All rights reserved.
//

#import "Cat.h"

@implementation Cat


-(id)initWithId:(int)uid name:(NSString *)name questions:(NSArray *)questions{
    if (self=[super init]) {
        self.name = name;
        self.uid = uid;
        self.questions = questions;
        return self;
    }
    return nil;
}

+(NSArray *)all{
    return @[
             [[Cat alloc] initWithId:1 name:@"自然测量" questions:@[]],
             [[Cat alloc] initWithId:2 name:@"空间认识" questions:@[]],
             [[Cat alloc] initWithId:3 name:@"数学逻辑" questions:@[]],
             [[Cat alloc] initWithId:4 name:@"归类问题" questions:@[]],
             [[Cat alloc] initWithId:5 name:@"图形临摹" questions:@[]],
             [[Cat alloc] initWithId:6 name:@"语言逻辑" questions:@[]],
             [[Cat alloc] initWithId:7 name:@"推理能力" questions:@[]],
             [[Cat alloc] initWithId:8 name:@"记忆能力" questions:@[]],
             [[Cat alloc] initWithId:9 name:@"常识问题" questions:@[]],
             [[Cat alloc] initWithId:10 name:@"其他类型" questions:@[]],

             ];
}


+(NSArray *)getQuestionsById:(int)catId{
    for (Cat *cat in Cat.all) {
        if (catId == cat.uid){
            return cat.questions;
        }
    }
    return @[];

}

+(NSString *)getCatNameById:(int)catId{
    for (Cat *cat in Cat.all) {
        if (catId == cat.uid){
            return cat.name;
        }
    }
    return @"";
}


@end
