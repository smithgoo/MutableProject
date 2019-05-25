//
//  ViewController.m
//  MutableProject
//
//  Created by 王朋 on 2019/5/25.
//  Copyright © 2019 王朋. All rights reserved.
//

#import "ViewController.h"
#import <ReqAPI.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    ReqAPI *api =[ReqAPI new];
    [api test];
}


@end
