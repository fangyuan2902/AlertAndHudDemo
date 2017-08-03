//
//  ViewController.m
//  AlertAndHudDemo
//
//  Created by *** on 2017/8/2.
//  Copyright © 2017年 yuanfang. All rights reserved.
//

#import "ViewController.h"
#import "HelperHud.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [HelperHud showWaiting]; 
//    [HelperHud tipMeaage:@"123456123456ui123456ui123456ui123456ui123456uiui" afterDelay:5];
//    [HelperHud alertMessage:@"111" sureTitle:@"secwc" cancelTitle:@"123456" sureAction:^{
//        NSLog(@"sdfghjk");
//    }];
    [self performSelector:@selector(hidden) withObject:nil afterDelay:5];
}

- (void)hidden {
    [HelperHud stopWaiting];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
