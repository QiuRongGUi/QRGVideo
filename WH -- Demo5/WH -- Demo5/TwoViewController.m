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

@end

@implementation TwoViewController

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
        
    [self.navigationController.navigationBar setBackgroundImage:[self jk_imageWithColor:[UIColor clearColor]] forBarMetrics:UIBarMetricsDefault];
    [self.navigationController.navigationBar setShadowImage:[[UIImage alloc] init]];
    
    
    
}
- (void)viewDidLoad {
    
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    
    CGFloat Width = [UIScreen mainScreen].bounds.size.width;

    
    VideoHeaderView *video = [[VideoHeaderView alloc] init];
    video.deleagte = self;
    video.frame = CGRectMake(0, 0, Width, 500);
    [self.view addSubview:video];
        
}
- (void)VideoHeaderViewWithHidden:(BOOL)aState{
    
    [self.navigationController.navigationBar setHidden:aState];
    [[UIApplication sharedApplication]setStatusBarHidden:aState];
    
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



@end
