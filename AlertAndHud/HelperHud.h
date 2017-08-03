//
//  HelperHud.h
//  AlertAndHudDemo
//
//  Created by *** on 2017/8/2.
//  Copyright © 2017年 yuanfang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface HelperHud : NSObject

/**
 初始化显示
 
 @param title 标题
 @param cancelTitle 取消按钮标题
 */
+ (void)alertTitle:(NSString *)title cancelTitle:(NSString *)cancelTitle;

/**
 初始化显示
 
 @param title 标题
 @param sureTitle 确定按钮标题
 @param sureBlock 确定回调
 */
+ (void)alertTitle:(NSString *)title sureTitle:(NSString *)sureTitle sureAction:(void(^)(void))sureBlock;

/**
 初始化显示
 
 @param title 标题
 @param sureTitle 确定按钮标题
 @param cancelTitle 取消按钮标题
 @param sureBlock 确定回调
 */
+ (void)alertTitle:(NSString *)title sureTitle:(NSString *)sureTitle cancelTitle:(NSString *)cancelTitle sureAction:(void(^)(void))sureBlock;

/**
 初始化显示
 
 @param title 标题
 @param sureTitle 确定按钮标题
 @param cancelTitle 取消按钮标题
 @param sureBlock 确定回调
 @param cancelBlock 取消回调
 */
+ (void)alertTitle:(NSString *)title sureTitle:(NSString *)sureTitle cancelTitle:(NSString *)cancelTitle sureAction:(void(^)(void))sureBlock cancelAction:(void(^)(void))cancelBlock;

/**
 初始化显示
 
 @param message 内容
 @param cancelTitle 取消按钮标题
*/
+ (void)alertMessage:(NSString *)message cancelTitle:(NSString *)cancelTitle;

/**
 初始化显示
 
 @param message 内容
 @param sureTitle 确定按钮标题
 @param sureBlock 确定回调
 */
+ (void)alertMessage:(NSString *)message sureTitle:(NSString *)sureTitle sureAction:(void(^)(void))sureBlock;

/**
 初始化显示
 
 @param message 内容
 @param sureTitle 确定按钮标题
 @param cancelTitle 取消按钮标题
 @param sureBlock 确定回调
 */
+ (void)alertMessage:(NSString *)message sureTitle:(NSString *)sureTitle cancelTitle:(NSString *)cancelTitle sureAction:(void(^)(void))sureBlock;

/**
 初始化显示
 
 @param message 内容
 @param sureTitle 确定按钮标题
 @param cancelTitle 取消按钮标题
 @param sureBlock 确定回调
 @param cancelBlock 取消回调
 */
+ (void)alertMessage:(NSString *)message sureTitle:(NSString *)sureTitle cancelTitle:(NSString *)cancelTitle sureAction:(void(^)(void))sureBlock cancelAction:(void(^)(void))cancelBlock;

/**
 初始化显示
 
 @param title 标题
 @param message 内容
 @param cancelTitle 取消按钮标题
 */
+ (void)alertTitle:(NSString *)title message:(NSString *)message cancelTitle:(NSString *)cancelTitle;

/**
 初始化显示
 
 @param title 标题
 @param message 内容
 @param sureTitle 确定按钮标题
 @param sureBlock 确定回调
 */
+ (void)alertTitle:(NSString *)title message:(NSString *)message sureTitle:(NSString *)sureTitle sureAction:(void(^)(void))sureBlock;

/**
 初始化显示
 
 @param title 标题
 @param message 内容
 @param sureTitle 确定按钮标题
 @param cancelTitle 取消按钮标题
 @param sureBlock 确定回调
 */
+ (void)alertTitle:(NSString *)title message:(NSString *)message sureTitle:(NSString *)sureTitle cancelTitle:(NSString *)cancelTitle sureAction:(void(^)(void))sureBlock;

/**
 初始化显示

 @param title 标题
 @param message 内容
 @param sureTitle 确定按钮标题
 @param cancelTitle 取消按钮标题
 @param sureBlock 确定回调
 @param cancelBlock 取消回调
 */
+ (void)alertTitle:(NSString *)title message:(NSString *)message sureTitle:(NSString *)sureTitle cancelTitle:(NSString *)cancelTitle sureAction:(void(^)(void))sureBlock cancelAction:(void(^)(void))cancelBlock;


/**
 初始化显示
 
 @param message 提示语
 */
+ (void)tipMessage:(NSString *)message;

/**
 初始化显示
 
 @param message 提示语
 @param view 显示的视图
 */
+ (void)tipMessage:(NSString *)message showInView:(UIView *)view;

/**
 初始化显示
 
 @param message 提示语
 @param delay 延迟时间
 */
+ (void)tipMessage:(NSString *)message afterDelay:(NSTimeInterval)delay;

/**
 初始化显示
 
 @param message 提示语
 @param view 显示的视图
 @param delay 延迟时间
 */
+ (void)tipMessage:(NSString *)message showInView:(UIView *)view afterDelay:(NSTimeInterval)delay;

/**
 初始化显示
 
 @param message 提示语
 @param completion 消失后回调
 */
+ (void)tipMessage:(NSString *)message completion:(void (^)(void))completion;

/**
 初始化显示
 
 @param message 提示语
 @param view 显示的视图
 @param completion 消失后回调
 */
+ (void)tipMessage:(NSString *)message showInView:(UIView *)view completion:(void (^)(void))completion;

/**
 初始化显示
 
 @param message 提示语
 @param delay 延迟时间
 @param completion 消失后回调
 */
+ (void)tipMessage:(NSString *)message afterDelay:(NSTimeInterval)delay completion:(void (^)(void))completion;

/**
 初始化显示

 @param message 提示语
 @param view 显示的视图
 @param delay 延迟时间
 @param completion 消失后回调
 */
+ (void)tipMessage:(NSString *)message showInView:(UIView *)view afterDelay:(NSTimeInterval)delay completion:(void (^)(void))completion;


/**
 初始化显示
 */
+ (void)showWaiting;

/**
 初始化显示
 
 @param message 提示语
 */
+ (void)showWaiting:(NSString *)message;

/**
 初始化显示
 
 @param message 提示语
 @param view 显示的视图
 */
+ (void)showWaiting:(NSString *)message showInView:(UIView *)view;

/**
 初始化显示
 
 @param message 提示语
 @param delay 延迟时间
 */
+ (void)showWaiting:(NSString *)message afterDelay:(NSTimeInterval)delay;

/**
 初始化显示
 
 @param message 提示语
 @param view 显示的视图
 @param delay 延迟时间
 */
+ (void)showWaiting:(NSString *)message showInView:(UIView *)view afterDelay:(NSTimeInterval)delay;

/**
 初始化显示
 
 @param message 提示语
 @param completion 消失后回调
 */
+ (void)showWaiting:(NSString *)message completion:(void (^)(void))completion;

/**
 初始化显示
 
 @param message 提示语
 @param view 显示的视图
 @param completion 消失后回调
 */
+ (void)showWaiting:(NSString *)message showInView:(UIView *)view completion:(void (^)(void))completion;

/**
 初始化显示
 
 @param message 提示语
 @param delay 延迟时间
 @param completion 消失后回调
 */
+ (void)showWaiting:(NSString *)message afterDelay:(NSTimeInterval)delay completion:(void (^)(void))completion;

/**
 初始化显示
 
 @param message 提示语
 @param view 显示的视图
 @param delay 延迟时间
 @param completion 消失后回调
 */
+ (void)showWaiting:(NSString *)message showInView:(UIView *)view afterDelay:(NSTimeInterval)delay completion:(void (^)(void))completion;

/**
 消失
 */
+ (void)stopWaiting;

@end

@interface AlertAndHud : UIView

- (instancetype)initWithMessage:(NSString *)message view:(UIView *)view;

- (instancetype)initActivityIndicatorWithMessage:(NSString *)message view:(UIView *)view;

- (void)dismiss;

@end
