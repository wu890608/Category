//
//  NSObject+HUD.h
//  BaseProject
//
//  Created by tarena on 15/12/17.
//  Copyright © 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "SVProgressHUD.h"

@interface NSObject (HUD)

//- (UIView *)currentView;
//
///** 弹出文字提示 */
//- (void)showAlert:(NSString *)text;
///** 显示忙 */
//- (void)showBusy;
///** 隐藏提示 */
//- (void)hideProgress;
//
///** 显示成功 */
//- (void)showSuccess:(NSString *)title;
//
///** 显示网路错误 */
//- (void)showNetError;
//
///** 无发布需求 */
//- (void)showWonderMentWithTitle:(NSString *)title;
//
//
//- (void)showAlert:(NSString *)text andDelay:(int)delay;

-(void)showLoading;
-(void)showDidLoad;
-(void)dismiss;
-(void)showError;
-(void)showMessageWithTitle:(NSString*)title;
-(void)showmessage:(NSString*)msg;
-(void)showLoadingWithTitle:(NSString*)title;
-(void)showDidLoadWithTitle:(NSString*)title;
-(void)showErrorWith:(NSString*)msg;
@end











