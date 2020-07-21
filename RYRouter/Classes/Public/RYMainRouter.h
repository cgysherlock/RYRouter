//
//  RYMainRouter.h
//  Pods
//
//  Created by apple on 2020/7/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RYMainRouter : NSObject

@property (nonatomic, strong) NSMutableDictionary<NSString *,NSString *> *targetRouters;
+ (instancetype)router;
- (void)registerUrl:(NSString *)route toControllerClass:(Class)controllerClass;

- (UIViewController *)matchControllerUrl:(NSString *)router;
- (UIViewController *)matchControllerDict:(NSDictionary *)dict;

@end

@interface UIViewController (HBPageRouter)

@property (nonatomic, strong, readonly) NSDictionary *params;
- (BOOL)validateParams:(NSDictionary *)params;

@end


NS_ASSUME_NONNULL_END
