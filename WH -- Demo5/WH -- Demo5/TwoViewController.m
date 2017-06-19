//
//  TwoViewController.m
//  WH -- Demo5
//
//  Created by QIUGUI on 2017/6/18.
//  Copyright © 2017年 QIUGUI. All rights reserved.
//

#import "TwoViewController.h"
#import "KrVideoPlayerController.h"
#import "VideoHeaderView.h"


@interface TwoViewController ()<VideoHeaderViewDelegate>
/** <#class#>*/
@property(nonatomic,strong) KrVideoPlayerController *videoController;
/** <#class#>*/
@property(nonatomic,strong) VideoHeaderView *video;

@end

@implementation TwoViewController

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
//         加载到view上
//    [self.navigationController.navigationBar setBackgroundImage:[self jk_imageWithColor:[UIColor clearColor]] forBarMetrics:UIBarMetricsDefault];
//    [self.navigationController.navigationBar setShadowImage:[[UIImage alloc] init]];
    
    [self.navigationController.navigationBar setHidden:YES];
      
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self.navigationController.navigationBar setHidden:NO];
    /** 退出停止视频播放*/
    [self.video.videoController dismiss];
    
}
- (void)viewDidLoad {
    
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    
    CGFloat Width = [UIScreen mainScreen].bounds.size.width;

    
    self.video = [[VideoHeaderView alloc] init];
    self.video.deleagte = self;
    self.video.frame = CGRectMake(0, 0, Width, 500);
    [self.view addSubview:self.video];
        
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(back) name:@"VideoBack" object:nil];

}

/**
// 状态栏、导航栏设定  加载到view上
//
// @param aState <#aState description#>
// */
//- (void)VideoHeaderViewWithHidden:(BOOL)aState{
//    
//    [self.navigationController.navigationBar setHidden:aState];
//    [[UIApplication sharedApplication]setStatusBarHidden:aState];
//    
//}
- (void)back{
    
    [self.navigationController popViewControllerAnimated:YES];
}
/**
 *  @brief  根据颜色生成纯色图片
 *
 *  @param color 颜色
 *
 *  @return 纯色图片
 */
- (UIImage *)jk_imageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

- (void)dealloc{
    
    [[NSNotificationCenter defaultCenter]removeObserver:self name:@"VideoBack" object:nil];
    
}

@end
