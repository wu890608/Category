//
//  UIScrollView+Refresh.m
//  BaseProject
//
//  Created by tarena on 15/12/16.
//  Copyright © 2015年 tarena. All rights reserved.
//

#import "UIScrollView+Refresh.h"

@implementation UIScrollView (Refresh)

/** 添加头部刷新 */
- (void)addHeaderRefresh:(MJRefreshComponentRefreshingBlock)refreshBlock{
    MJRefreshGifHeader *header =[MJRefreshGifHeader headerWithRefreshingBlock:refreshBlock];
    [header setImages:@[[UIImage imageNamed:@"ship-anim0"],[UIImage imageNamed:@"ship-anim1"],[UIImage imageNamed:@"ship-anim2"],[UIImage imageNamed:@"ship-anim3"],[UIImage imageNamed:@"ship-anim4"]] duration:.5 forState: MJRefreshStatePulling];
    [header setImages:@[[UIImage imageNamed:@"ship-anim0"],[UIImage imageNamed:@"ship-anim1"],[UIImage imageNamed:@"ship-anim2"],[UIImage imageNamed:@"ship-anim3"],[UIImage imageNamed:@"ship-anim4"]] duration:.5 forState: MJRefreshStateIdle];
    [header setImages:@[[UIImage imageNamed:@"ship-anim0"],[UIImage imageNamed:@"ship-anim1"],[UIImage imageNamed:@"ship-anim2"],[UIImage imageNamed:@"ship-anim3"],[UIImage imageNamed:@"ship-anim4"]] duration:.5 forState: MJRefreshStateNoMoreData];
    [header setImages:@[[UIImage imageNamed:@"ship-anim0"],[UIImage imageNamed:@"ship-anim1"],[UIImage imageNamed:@"ship-anim2"],[UIImage imageNamed:@"ship-anim3"],[UIImage imageNamed:@"ship-anim4"]] duration:.5 forState: MJRefreshStateRefreshing];
    [header setImages:@[[UIImage imageNamed:@"ship-anim0"],[UIImage imageNamed:@"ship-anim1"],[UIImage imageNamed:@"ship-anim2"],[UIImage imageNamed:@"ship-anim3"],[UIImage imageNamed:@"ship-anim4"]] duration:.5 forState: MJRefreshStateWillRefresh];
    //[header setImages:@[[UIImage imageNamed:@"ship-anim0"],[UIImage imageNamed:@"ship-anim1"],[UIImage imageNamed:@"ship-anim2"],[UIImage imageNamed:@"ship-anim3"],[UIImage imageNamed:@"ship-anim4"]] duration:.5 forState: MJRefreshStatePulling];
    
    self.mj_header = header;
}
/** 开始头部刷新 */
- (void)beginHeaderRefresh{
    [self.mj_header beginRefreshing];
}
/** 结束头部刷新 */
- (void)endHeaderRefresh{
    [self.mj_header endRefreshing];
}
/** 添加脚部刷新 */
- (void)addFooterRefresh:(MJRefreshComponentRefreshingBlock)refreshBlock{
    self.mj_footer=[MJRefreshAutoNormalFooter footerWithRefreshingBlock:refreshBlock];
}
/** 开始脚部刷新 */
- (void)beginFooterRefresh{
    [self.mj_footer beginRefreshing];
}
/** 结束脚部刷新 */
- (void)endFooterRefresh{
    [self.mj_footer endRefreshing];
}

@end













