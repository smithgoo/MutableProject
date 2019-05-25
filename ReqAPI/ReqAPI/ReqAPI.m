//
//  ReqAPI.m
//  ReqAPI
//
//  Created by 王朋 on 2019/5/25.
//  Copyright © 2019 王朋. All rights reserved.
//

#import "ReqAPI.h"
#import <AFNetworking.h>
@implementation ReqAPI
- (void)test {
    NSLog(@"ReqAPI 功能正常");
    
    [self AFNAction];
}

- (void)AFNAction {
    AFHTTPSessionManager *manage =[AFHTTPSessionManager manager];
    [manage GET:@"http://www.baidu.com" parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
       NSLog(@"AFN 功能引用正常");
    }];
}
@end
