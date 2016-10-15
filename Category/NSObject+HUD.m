//
//  NSObject+HUD.m
//  BaseProject
//
//  Created by tarena on 15/12/17.
//  Copyright © 2015年 tarena. All rights reserved.
//

#import "NSObject+HUD.h"

@implementation NSObject (HUD)
//获取当前屏幕的最上方正在显示的那个view
//- (UIView *)currentView{
//    UIViewController *vc=[UIApplication sharedApplication].keyWindow.rootViewController;
//
//    if ([vc isKindOfClass:[UITabBarController class]]) {
//        vc = [(UITabBarController *)vc selectedViewController];
//    }
//    if ([vc isKindOfClass:[UINavigationController class]]) {
//        vc = [(UINavigationController *)vc visibleViewController];
//    }
//    return vc.view;
//}
//
//
//- (void)showAlert:(NSString *)text {
//    dispatch_async(dispatch_get_main_queue(), ^{
//
//        [MBProgressHUD hideHUDForView:[self currentView] animated:YES];
//        MBProgressHUD *progressHUD=[MBProgressHUD showHUDAddedTo:[self currentView] animated:YES];
//        progressHUD.mode = MBProgressHUDModeText;
//        progressHUD.label.text = text;
//        [progressHUD hideAnimated:YES afterDelay:1];
//    });
//}
//
//- (void)showAlert:(NSString *)text andDelay:(int)delay {
//    dispatch_async(dispatch_get_main_queue(), ^{
//   
//        [MBProgressHUD hideHUDForView:[self currentView] animated:YES];
//        MBProgressHUD *progressHUD=[MBProgressHUD showHUDAddedTo:[self currentView] animated:YES];
//        progressHUD.mode = MBProgressHUDModeText;
//        progressHUD.label.text = text;
//        [progressHUD hideAnimated:YES afterDelay:1];
//    });
//}
//
//- (void)showBusy{
//    [[NSOperationQueue mainQueue] addOperationWithBlock:^{
//        
//        [MBProgressHUD hideHUDForView:[self currentView] animated:YES];
//        MBProgressHUD *progressHUD=[MBProgressHUD showHUDAddedTo:[self currentView] animated:YES];
//
//        [progressHUD hideAnimated:YES afterDelay:3];
//        
//    }];
//
//}
//
//- (void)hideProgress{
//    [[NSOperationQueue mainQueue] addOperationWithBlock:^{
//        [MBProgressHUD hideHUDForView:[self currentView] animated:YES];
//    }];
//}
//
//
//- (void)showSuccess:(NSString *)title {
//    dispatch_async(dispatch_get_main_queue(), ^{
//        
//        [MBProgressHUD hideHUDForView:[self currentView] animated:YES];
//        MBProgressHUD *progressHUD=[MBProgressHUD showHUDAddedTo:[self currentView] animated:YES];
//        progressHUD.mode = MBProgressHUDModeCustomView;
//        progressHUD.customView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"true"]];
//        progressHUD.label.text = title;
//        [progressHUD hideAnimated:YES afterDelay:0.5];
//    });
//}
//
//
//- (void)showNetError {
//    dispatch_async(dispatch_get_main_queue(), ^{
//        
//        [MBProgressHUD hideHUDForView:[self currentView] animated:YES];
//        MBProgressHUD *progressHUD=[MBProgressHUD showHUDAddedTo:[self currentView] animated:YES];
//        progressHUD.mode = MBProgressHUDModeCustomView;
//        progressHUD.customView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"false"]];
//        progressHUD.label.text = @"网络不可用";
//        [progressHUD hideAnimated:YES afterDelay:0.5];
//    });
//}
//
//- (void)showWonderMentWithTitle:(NSString *)title {
//    dispatch_async(dispatch_get_main_queue(), ^{
//        
//        [MBProgressHUD hideHUDForView:[self currentView] animated:YES];
//        MBProgressHUD *progressHUD=[MBProgressHUD showHUDAddedTo:[self currentView] animated:YES];
//        progressHUD.mode = MBProgressHUDModeCustomView;
//        progressHUD.customView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"wonderment"]];
//        progressHUD.label.text = title;
//        [progressHUD hideAnimated:YES afterDelay:0.5];
//    });
//}
-(void)showLoading{
    [SVProgressHUD setDefaultAnimationType:SVProgressHUDAnimationTypeNative];
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeCustom];
    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleCustom];
    [SVProgressHUD setForegroundColor:UIColorTheme];
    [SVProgressHUD setBackgroundLayerColor:[[UIColor lightGrayColor] colorWithAlphaComponent:0.3]];
    [SVProgressHUD setBackgroundColor:UIColorWhite];
    [SVProgressHUD showWithStatus:@"正在加载.."];
}
-(void)showDidLoad{
     [SVProgressHUD showSuccessWithStatus:@"加载完成!"];
}
-(void)showLoadingWithTitle:(NSString*)title{
    [SVProgressHUD setDefaultAnimationType:SVProgressHUDAnimationTypeNative];
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeCustom];
    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleCustom];
    [SVProgressHUD setForegroundColor:UIColorTheme];
    [SVProgressHUD setBackgroundLayerColor:[[UIColor lightGrayColor] colorWithAlphaComponent:0.3]];
    [SVProgressHUD setBackgroundColor:UIColorWhite];
    [SVProgressHUD showWithStatus:title];
}
-(void)showDidLoadWithTitle:(NSString*)title{
    [SVProgressHUD showSuccessWithStatus:title];
}
-(void)dismiss{
    [SVProgressHUD dismiss];
}
-(void)showError{
    [SVProgressHUD setDefaultAnimationType:SVProgressHUDAnimationTypeNative];
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeCustom];
    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleCustom];
    [SVProgressHUD setForegroundColor:UIColorTheme];
    [SVProgressHUD setBackgroundLayerColor:[[UIColor lightGrayColor] colorWithAlphaComponent:0.3]];
    [SVProgressHUD setBackgroundColor:UIColorWhite];
    [SVProgressHUD showErrorWithStatus:@"⚠️ 网络异常"];
}
-(void)showMessageWithTitle:(NSString*)title{
    
    [SVProgressHUD setDefaultAnimationType:SVProgressHUDAnimationTypeNative];
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeCustom];
    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleCustom];
    [SVProgressHUD setForegroundColor:UIColorTheme];
    [SVProgressHUD setBackgroundLayerColor:[[UIColor lightGrayColor] colorWithAlphaComponent:0.3]];
    [SVProgressHUD setBackgroundColor:UIColorWhite];
     [SVProgressHUD showInfoWithStatus:title];
}
-(void)showmessage:(NSString*)msg{
    
    [SVProgressHUD showImage:nil status:msg];

}
-(void)showErrorWith:(NSString*)msg{
    [SVProgressHUD setDefaultAnimationType:SVProgressHUDAnimationTypeNative];
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeCustom];
    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleCustom];
    [SVProgressHUD setForegroundColor:UIColorTheme];
    [SVProgressHUD setBackgroundLayerColor:[[UIColor lightGrayColor] colorWithAlphaComponent:0.3]];
    [SVProgressHUD setBackgroundColor:UIColorWhite];
    [SVProgressHUD showErrorWithStatus:msg];
}



@end








