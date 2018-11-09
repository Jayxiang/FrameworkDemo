//
//  FrameworkVC.m
//  CJXQRscan
//
//  Created by tet-cjx on 2018/11/9.
//  Copyright © 2018 Messageinfo. All rights reserved.
//

#import "FrameworkVC.h"

@interface FrameworkVC ()

@end

@implementation FrameworkVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)backClick:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
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
