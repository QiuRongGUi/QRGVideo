//
//  OneViewController.m
//  WH -- Demo5
//
//  Created by QIUGUI on 2017/6/18.
//  Copyright © 2017年 QIUGUI. All rights reserved.
//

#import "TwoViewController.h"
#import "OneViewController.h"

@interface OneViewController ()

@end

@implementation OneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  

    self.view.backgroundColor = [UIColor greenColor];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"播放视频" style:UIBarButtonItemStyleDone target:self action:@selector(clike)];
    
}
- (void)clike{
    
    TwoViewController *two = [[TwoViewController alloc] init];
    [self.navigationController pushViewController:two animated:YES];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
