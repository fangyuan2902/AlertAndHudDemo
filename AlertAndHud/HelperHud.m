//
//  HelperHud.m
//  AlertAndHudDemo
//
//  Created by *** on 2017/8/2.
//  Copyright © 2017年 yuanfang. All rights reserved.
//

#import "HelperHud.h"

@implementation HelperHud

#pragma mark - alertView

+ (void)alertTitle:(NSString *)title cancelTitle:(NSString *)cancelTitle {
    [HelperHud alertTitle:title sureTitle:nil cancelTitle:cancelTitle sureAction:nil];
}

+ (void)alertTitle:(NSString *)title sureTitle:(NSString *)sureTitle sureAction:(void(^)(void))sureBlock {
    [HelperHud alertTitle:title sureTitle:sureTitle cancelTitle:nil sureAction:sureBlock];
}

+ (void)alertTitle:(NSString *)title sureTitle:(NSString *)sureTitle cancelTitle:(NSString *)cancelTitle sureAction:(void(^)(void))sureBlock {
    [HelperHud alertTitle:title sureTitle:sureTitle cancelTitle:cancelTitle sureAction:sureBlock cancelAction:nil];
}

+ (void)alertTitle:(NSString *)title sureTitle:(NSString *)sureTitle cancelTitle:(NSString *)cancelTitle sureAction:(void(^)(void))sureBlock cancelAction:(void(^)(void))cancelBlock {
    [HelperHud alertTitle:title message:nil sureTitle:sureTitle cancelTitle:cancelTitle sureAction:sureBlock cancelAction:cancelBlock];
}

+ (void)alertMessage:(NSString *)message cancelTitle:(NSString *)cancelTitle {
    [HelperHud alertMessage:message sureTitle:nil cancelTitle:cancelTitle sureAction:nil];
}

+ (void)alertMessage:(NSString *)message sureTitle:(NSString *)sureTitle sureAction:(void(^)(void))sureBlock {
    [HelperHud alertMessage:message sureTitle:sureTitle cancelTitle:nil sureAction:sureBlock];
}

+ (void)alertMessage:(NSString *)message sureTitle:(NSString *)sureTitle cancelTitle:(NSString *)cancelTitle sureAction:(void(^)(void))sureBlock {
    [HelperHud alertMessage:message sureTitle:sureTitle cancelTitle:cancelTitle sureAction:sureBlock cancelAction:nil];
}

+ (void)alertMessage:(NSString *)message sureTitle:(NSString *)sureTitle cancelTitle:(NSString *)cancelTitle sureAction:(void(^)(void))sureBlock cancelAction:(void(^)(void))cancelBlock {
    [HelperHud alertTitle:nil message:message sureTitle:sureTitle cancelTitle:cancelTitle sureAction:sureBlock cancelAction:cancelBlock];
}

+ (void)alertTitle:(NSString *)title message:(NSString *)message cancelTitle:(NSString *)cancelTitle {
    [HelperHud alertTitle:title message:message sureTitle:cancelTitle sureAction:nil];
}

+ (void)alertTitle:(NSString *)title message:(NSString *)message sureTitle:(NSString *)sureTitle sureAction:(void(^)(void))sureBlock {
    [HelperHud alertTitle:title message:message sureTitle:sureTitle cancelTitle:nil sureAction:sureBlock];
}

+ (void)alertTitle:(NSString *)title message:(NSString *)message sureTitle:(NSString *)sureTitle cancelTitle:(NSString *)cancelTitle sureAction:(void(^)(void))sureBlock {
    [HelperHud alertTitle:title message:message sureTitle:sureTitle cancelTitle:cancelTitle sureAction:sureBlock cancelAction:nil];
}

+ (void)alertTitle:(NSString *)title message:(NSString *)message sureTitle:(NSString *)sureTitle cancelTitle:(NSString *)cancelTitle sureAction:(void(^)(void))sureBlock cancelAction:(void(^)(void))cancelBlock {
    title = (![HelperHud isNullOrEmpty:title]) ? title : @"";
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    if (![HelperHud isNullOrEmpty:cancelTitle]) {
        [alertController addAction:[UIAlertAction actionWithTitle:cancelTitle style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
            if (cancelBlock) {
                cancelBlock();
            }
        }]];
    }
    if (![HelperHud isNullOrEmpty:sureTitle]) {
        [alertController addAction:[UIAlertAction actionWithTitle:sureTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
            if (sureBlock) {
                sureBlock();
            }
        }]];
    }
    UIViewController *topRootViewController = [UIApplication sharedApplication].keyWindow.rootViewController;
    while (topRootViewController.presentedViewController) {
        topRootViewController = topRootViewController.presentedViewController;
    }
    [topRootViewController presentViewController:alertController animated:YES completion:nil];
}

#pragma mark - hintMessage

+ (void)tipMessage:(NSString *)message {
    [HelperHud tipMessage:message afterDelay:2];
}

+ (void)tipMessage:(NSString *)message showInView:(UIView *)view {
    [HelperHud tipMessage:message showInView:view afterDelay:2];
}

+ (void)tipMessage:(NSString *)message afterDelay:(NSTimeInterval)delay {
    [HelperHud tipMessage:message afterDelay:delay completion:nil];
}

+ (void)tipMessage:(NSString *)message showInView:(UIView *)view afterDelay:(NSTimeInterval)delay {
    [HelperHud tipMessage:message showInView:view afterDelay:delay completion:nil];
}

+ (void)tipMessage:(NSString *)message completion:(void (^)(void))completion {
    [HelperHud tipMessage:message afterDelay:2 completion:completion];
}

+ (void)tipMessage:(NSString *)message showInView:(UIView *)view completion:(void (^)(void))completion {
    [HelperHud tipMessage:message showInView:view afterDelay:2 completion:completion];
}

+ (void)tipMessage:(NSString *)message afterDelay:(NSTimeInterval)delay completion:(void (^)(void))completion {
    [HelperHud tipMessage:message showInView:nil afterDelay:delay completion:completion];
}

+ (void)tipMessage:(NSString *)message showInView:(UIView *)view afterDelay:(NSTimeInterval)delay completion:(void (^)(void))completion {
    if (message.length == 0) {
        return;
    }
    if (view == nil) {
        view = [UIApplication sharedApplication].keyWindow;
    }

    AlertAndHud *hud = [[AlertAndHud alloc] initWithMessage:message view:view];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delay * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [hud dismiss];
        if (completion) {
            completion();
        }
    });
}

#pragma mark - waitMessage

+ (void)showWaiting {
    [HelperHud showWaiting:@"加载中..."];
}

+ (void)showWaiting:(NSString *)message {
    [HelperHud showWaiting:message afterDelay:0];
}

+ (void)showWaiting:(NSString *)message showInView:(UIView *)view {
    [HelperHud showWaiting:message showInView:view afterDelay:0];
}

+ (void)showWaiting:(NSString *)message afterDelay:(NSTimeInterval)delay {
    [HelperHud showWaiting:message afterDelay:delay completion:nil];
}

+ (void)showWaiting:(NSString *)message showInView:(UIView *)view afterDelay:(NSTimeInterval)delay {
    [HelperHud showWaiting:message showInView:view afterDelay:delay completion:nil];
}

+ (void)showWaiting:(NSString *)message completion:(void (^)(void))completion {
    [HelperHud showWaiting:message afterDelay:0 completion:completion];
}

+ (void)showWaiting:(NSString *)message showInView:(UIView *)view completion:(void (^)(void))completion {
    [HelperHud showWaiting:message showInView:view afterDelay:0 completion:completion];
}

+ (void)showWaiting:(NSString *)message afterDelay:(NSTimeInterval)delay completion:(void (^)(void))completion {
    [HelperHud showWaiting:message showInView:nil afterDelay:delay completion:completion];
}

+ (void)showWaiting:(NSString *)message showInView:(UIView *)view afterDelay:(NSTimeInterval)delay completion:(void (^)(void))completion {
    if (message.length == 0) {
        return;
    }
    if (view == nil) {
        view = [UIApplication sharedApplication].keyWindow;
    }
    
    AlertAndHud *hud = [[AlertAndHud alloc] initActivityIndicatorWithMessage:message view:view];
    hud.tag = 9999;
    if (delay != 0) {
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delay * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [hud dismiss];
            if (completion) {
                completion();
            }
        });
    }
}

+ (void)stopWaiting {
    UIWindow * window = [[UIApplication sharedApplication] keyWindow];
    AlertAndHud *hud = [window viewWithTag:9999];
    [hud dismiss];
}

+ (BOOL)isNullOrEmpty:(NSString *)str {
    return ([str isEqualToString:@""] || str == nil);
}

@end


@interface AlertAndHud () {
    UILabel *_messageLabel;
    UIActivityIndicatorView *_indicator;  
}

@end

@implementation AlertAndHud

- (instancetype)initWithMessage:(NSString *)message view:(UIView *)view {
    self = [super init];
    if (self) {
        self.frame = view.bounds;
        [self initUIViewMessage:message];
        [view addSubview:self];
    }
    return self;
}

- (void)initUIViewMessage:(NSString *)message {
    UIView *bgView = [[UIView alloc] initWithFrame:self.frame];
    [self addSubview:bgView];
    
    _messageLabel = [[UILabel alloc] init];
    _messageLabel.font = [UIFont systemFontOfSize:15];
    _messageLabel.backgroundColor = [UIColor lightGrayColor];
    _messageLabel.text = message;
    _messageLabel.numberOfLines = 0;
    _messageLabel.layer.masksToBounds = YES;
    _messageLabel.layer.cornerRadius = 5;
    _messageLabel.textAlignment = NSTextAlignmentCenter;
    _messageLabel.adjustsFontSizeToFitWidth = YES;
    _messageLabel.textColor = [UIColor blackColor];
    CGSize size = [self boundingRectWithText:message font:_messageLabel.font];
    float height = size.height;
    float width = (size.width > [[UIScreen mainScreen] bounds].size.width - 50) ? ([[UIScreen mainScreen] bounds].size.width - 50) : size.width;
//    _messageLabel.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width - width - 25) / 2, ([[UIScreen mainScreen] bounds].size.height - height - 20) / 2, width + 20, height + 20);
    [bgView addSubview:_messageLabel];
    _messageLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [bgView addConstraint:[NSLayoutConstraint constraintWithItem:_messageLabel attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:width + 20]];
    [bgView addConstraint:[NSLayoutConstraint constraintWithItem:_messageLabel attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:height + 20]];
    [bgView addConstraint:[NSLayoutConstraint constraintWithItem:_messageLabel attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:bgView attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0]];
    [bgView addConstraint:[NSLayoutConstraint constraintWithItem:_messageLabel attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:bgView attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0.0]];
}

- (instancetype)initActivityIndicatorWithMessage:(NSString *)message view:(UIView *)view {
    self = [super init];
    if (self) {
        self.frame = view.bounds;
        [self initActivityIndicatorViewMessage:message];
        [view addSubview:self];
    }
    return self;
}

- (void)initActivityIndicatorViewMessage:(NSString *)message {
    UIView *bgView = [[UIView alloc] initWithFrame:self.frame];
    bgView.backgroundColor = [UIColor colorWithWhite:0.8 alpha:0.5];
    [self addSubview:bgView];
    
    UIView *containerView = [[UIView alloc] init];
    containerView.backgroundColor = [UIColor colorWithWhite:0.5 alpha:0.9];
    containerView.layer.masksToBounds = YES;
    containerView.layer.cornerRadius = 5;
    [bgView addSubview:containerView];
    containerView.translatesAutoresizingMaskIntoConstraints = NO;
    [bgView addConstraint:[NSLayoutConstraint constraintWithItem:containerView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:100]];
    [bgView addConstraint:[NSLayoutConstraint constraintWithItem:containerView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:100]];
    [bgView addConstraint:[NSLayoutConstraint constraintWithItem:containerView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:bgView attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0]];
    [bgView addConstraint:[NSLayoutConstraint constraintWithItem:containerView attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:bgView attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0.0]];
    
    _indicator = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
    _indicator.center = CGPointMake(50.0f, 45.0f);
    [containerView addSubview:_indicator];
    [_indicator startAnimating];
    
    _messageLabel = [[UILabel alloc] init];
    _messageLabel.font = [UIFont systemFontOfSize:15];
    _messageLabel.text = message;
    _messageLabel.textAlignment = NSTextAlignmentCenter;
    _messageLabel.textColor = [UIColor blackColor];
    [containerView addSubview:_messageLabel];
    _messageLabel.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *contraint1 = [NSLayoutConstraint constraintWithItem:_messageLabel attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:90];
    NSLayoutConstraint *contraint2 = [NSLayoutConstraint constraintWithItem:_messageLabel attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeHeight multiplier:1 constant:20];
    NSLayoutConstraint *contraint3 = [NSLayoutConstraint constraintWithItem:_messageLabel attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:containerView attribute:NSLayoutAttributeBottom multiplier:1.0 constant:-10.0];
    NSLayoutConstraint *contraint4 = [NSLayoutConstraint constraintWithItem:_messageLabel attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:containerView attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0];
    NSArray *array = [NSArray arrayWithObjects:contraint1, contraint2, contraint3, contraint4, nil];
    [containerView addConstraints:array];
}

- (void)dismiss {
    if (_indicator) {
        [_indicator stopAnimating];
    }
    [self removeFromSuperview];
}

- (CGSize)boundingRectWithText:(NSString *)text font:(UIFont *)font {
    NSDictionary *attribute = @{NSFontAttributeName : font};
    CGSize retSize = [text boundingRectWithSize:CGSizeMake([[UIScreen mainScreen] bounds].size.width - 50, 200)
                                        options:\
                      NSStringDrawingTruncatesLastVisibleLine |
                      NSStringDrawingUsesLineFragmentOrigin |
                      NSStringDrawingUsesFontLeading
                                     attributes:attribute
                                        context:nil].size;
    
    return retSize;
}

@end

