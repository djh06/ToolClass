//
//  UMViewController.m
//  ToolClass
//
//  Created by umios on 13-7-31.
//  Copyright (c) 2013年 umios. All rights reserved.
//

#import "UMViewController.h"

#import "NSString+NSStringTools.h"

@interface UMViewController ()

@end

@implementation UMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *str = @"abcdef";
    
    NSLog(@"---------(%d)------------",[str indexOf:@"bcd" from:1]);
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
