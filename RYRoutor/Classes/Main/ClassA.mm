//
//  ClassA.m
//  Testo
//
//  Created by sherlock on 2017/12/25.
//  Copyright © 2017年 beibei. All rights reserved.
//

#import "ClassA.h"

@interface ClassA ()

@property (nonatomic, strong) id strongStr;
@property (nonatomic, assign) id assignStr;

@property (nonatomic, strong) dispatch_queue_t queue;
@end

@implementation ClassA

- (id)getId {
    __block NSNumber *number ;
    self.queue = dispatch_queue_create("com.hackemist.SDWebImageDownloaderBarrierQueue", DISPATCH_QUEUE_CONCURRENT);
    goto test;
    dispatch_barrier_sync(self.queue, ^{
        number = @100;
    });
    number = @50;
    return number;
    
    test:
    NSLog(@"goto");
    return @30;
}

+ (NSInteger)integer:(NSObject *)obj {
    return 10;
}

- (void)setName:(NSString *)name {
    self.name = name;
}

@end
