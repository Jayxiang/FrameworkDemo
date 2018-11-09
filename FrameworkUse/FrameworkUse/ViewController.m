//
//  ViewController.m
//  FrameworkUse
//
//  Created by tet-cjx on 2018/11/8.
//  Copyright © 2018 hyd-cjx. All rights reserved.
//

#import "ViewController.h"
#import <FrameworkDemo/FrameworkDemo.h>
#import <Framework_Xib/Framework_Xib.h>
#import <StaticFramework_Xib/StaticFramework_Xib.h>
#import <Framework_Bundle/Framework_Bundle.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)frameworkClick:(id)sender {
    [[CJXPermissionsManage sharedInstance] getPhotoPermissions:^(BOOL authorized) {
        NSLog(@"%@",authorized?@"有权限":@"无权限");
    }];
}
- (IBAction)frameworkXibClick:(id)sender {
    //加载方式1
//    NSBundle *SDKBundle = [NSBundle bundleForClass:[CuijxQRController class]];
    
    //加载方式2  bundleWithIdentifier是Framework的BundleIdentifier
    NSBundle *SDKBundle = [NSBundle bundleWithIdentifier:@"com.wecan.Framework-Xib"];

    CuijxQRController *qr = [[CuijxQRController alloc] initWithNibName:@"CuijxQRController" bundle:SDKBundle];
    [self presentViewController:qr animated:YES completion:nil];
}
- (IBAction)staticFClick:(id)sender {

    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    //在这个路径下找到子bundle的路径
    NSString *path = [bundle pathForResource:@"StaticFramework_Xib" ofType:@"framework"];
    NSBundle *SDKBundle = [NSBundle bundleWithPath:path];
    FrameworkVC *fw = [[FrameworkVC alloc] initWithNibName:@"FrameworkVC" bundle:SDKBundle];
    [self presentViewController:fw animated:YES completion:nil];
}
- (IBAction)bundleClick:(id)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"FrameworkUseBundle" ofType:@"bundle"];
    NSBundle *SDKBundle = [NSBundle bundleWithPath:path];
    FrameworkUseBundleVC *fw = [[FrameworkUseBundleVC alloc] initWithNibName:@"FrameworkUseBundleVC" bundle:SDKBundle];
    [self presentViewController:fw animated:YES completion:nil];
}


@end
