//
//  ClassA.h
//  Testo
//
//  Created by sherlock on 2017/12/25.
//  Copyright © 2017年 beibei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClassA : NSObject

@property(copy, nonatomic) NSString *name;
@property(assign, nonatomic) NSInteger age;
- (id)getId;

+ (NSInteger)integer:(NSObject *)obj;

@end
