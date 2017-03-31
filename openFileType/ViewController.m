//
//  ViewController.m
//  openFileType
//
//  Created by xjw on 2017/3/31.
//  Copyright © 2017年 cn.com.rockmobile. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIImageView *imageView ;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    imageView = [[UIImageView alloc] init];
    [self.view addSubview:imageView];
}


- (void)openPng:(NSString*)string
{
    UIImage *image = [[UIImage alloc] initWithContentsOfFile:string];
    float width = image.size.width;
    float height = image.size.height;
    if (width > 320) {
        height = (height/width) * 300;
        width = 300;
    }
    
    CGRect frame = CGRectMake(0, 20, width, height);
    imageView.frame = frame;
    
    imageView.image = image;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
