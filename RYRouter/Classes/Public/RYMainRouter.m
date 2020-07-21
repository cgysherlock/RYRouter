//
//  RYMainRouter.m
//  Pods
//
//  Created by apple on 2020/7/21.
//

#import "RYMainRouter.h"
#import <objc/message.h>

@implementation RYMainRouter

static RYMainRouter *router = nil;

+ (instancetype)router {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        router = [[RYMainRouter alloc] init];
        router.targetRouters = [[NSMutableDictionary alloc] init];
    });
    return router;
}

- (void)registerUrl:(NSString *)router toControllerClass:(Class)controllerClass {
    self.targetRouters[router] = NSStringFromClass(controllerClass);
}

- (UIViewController *)matchControllerUrl:(NSString *)router {
    NSString *clsString = self.targetRouters[@"router"];
    //todo
    return [[NSClassFromString(clsString) alloc] init];
}

- (UIViewController *)matchControllerDict:(NSDictionary *)dict {
    //todo
    return [UIViewController.alloc init];
}

@end


@implementation UIViewController (HBPageRouter)

- (NSDictionary *)params
{
    return objc_getAssociatedObject(self, @selector(params));
}

- (BOOL)validateParams:(NSDictionary *)params
{
    return YES;
}

@end
