//
//  TestView.h
//  WH -- Demo5
//
//  Created by QIUGUI on 2017/6/16.
//  Copyright © 2017年 QIUGUI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KrVideoPlayerController.h"

@protocol VideoHeaderViewDelegate <NSObject>

- (void)VideoHeaderViewWithHidden:(BOOL)aState;

@end

@interface VideoHeaderView : UIView
@property(nonatomic,strong) KrVideoPlayerController *videoController;

@property(nonatomic,assign) id<VideoHeaderViewDelegate> deleagte;


@end
