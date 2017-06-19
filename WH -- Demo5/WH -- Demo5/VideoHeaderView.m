//
//  TestView.m
//  WH -- Demo5
//
//  Created by QIUGUI on 2017/6/16.
//  Copyright © 2017年 QIUGUI. All rights reserved.
//

#import "VideoHeaderView.h"

#import "KrVideoPlayerController.h"

@interface VideoHeaderView()

@property(nonatomic,strong) KrVideoPlayerController *videoController;

@end

@implementation VideoHeaderView


- (instancetype)initWithFrame:(CGRect)frame{
    
    if(self = [super initWithFrame:frame]){
             
        self.backgroundColor = [UIColor cyanColor];
        CGFloat Width = [UIScreen mainScreen].bounds.size.width;

        
        NSString *path = [[NSBundle mainBundle]pathForResource:@"150511_JiveBike.mov" ofType:nil];
        NSURL *url = [NSURL fileURLWithPath:path];
        
        self.videoController = [[KrVideoPlayerController alloc] initWithFrame:CGRectMake(0,0,Width,200)];
        __weak typeof(self)weakSelf = self;
        self.videoController.view.backgroundColor = [UIColor whiteColor];
        [self.videoController setDimissCompleteBlock:^{
            weakSelf.videoController = nil;
        }];
        [self.videoController setWillBackOrientationPortrait:^{
                    [weakSelf toolbarHidden:NO];
        }];
        [self.videoController setWillChangeToFullscreenMode:^{
                    [weakSelf toolbarHidden:YES];
        }];
        [self addSubview:self.videoController.view];
        //    [self.videoController showInWindow];
        
        self.videoController.contentURL = url;
        
        
      
    }
    return self;
}
- (void)toolbarHidden:(BOOL)aState{
    
    if([self.deleagte respondsToSelector:@selector(VideoHeaderViewWithHidden:)]){
        [self.deleagte VideoHeaderViewWithHidden:aState];
    }
}

@end
