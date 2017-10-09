//
//  Cat.h
//  template
//
//  Created by wupeng on 09/10/2017.
//  Copyright © 2017 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Cat : NSObject
@property (nonatomic,assign)int uid;
@property (nonatomic,retain)NSString *name;
@property (nonatomic,retain)NSArray *questions;

-(id)initWithId:(int)uid name:(NSString *)name questions:(NSArray *)questions;

+(NSArray *)all;
+(NSArray *)getQuestionsById:(int)catId;
+(NSString *)getCatNameById:(int)catId;
@end
