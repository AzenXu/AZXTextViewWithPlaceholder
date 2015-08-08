//
//  ViewController.m
//  AZXTextViewWithPlaceholderExample
//
//  Created by Azen.Xu on 15/8/8.
//  Copyright (c) 2015年 Azen.Xu. All rights reserved.
//

#import "ViewController.h"
#import "AZXTextViewWithPlaceholder.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    AZXTextViewWithPlaceholder *text = [[AZXTextViewWithPlaceholder alloc] initWithFrame:CGRectMake(0, 20, 250, 250)];
    text.backgroundColor = [UIColor grayColor];
    text.placeholder = @"请输入文字";
    [self.view addSubview:text];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
