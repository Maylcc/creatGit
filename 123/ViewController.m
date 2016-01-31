//
//  ViewController.m
//  demo
//
//  Created by may on 16/1/14.
//  Copyright © 2016年 may. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *pathArray = [NSArray arrayWithObjects:@"here", @"be", @"dragons", nil];
    NSLog(@"%@",[pathArray componentsJoinedByString:@"++"]);
    
//    NSString* path = @"https://api.projectoxford.ai/spid/v1.0/identificationProfiles";
//    NSArray* array = @[
//                       // Request parameters
//                       @"entities=true",
//                       ];
//    
//    NSString* string = [array componentsJoinedByString:@"&"];
//    path = [path stringByAppendingFormat:@"?%@", string];
//    
//    NSLog(@"%@", path);
//    
//   
//    
//    NSMutableURLRequest* _request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:path]];
//    [_request setHTTPMethod:@"POST"];
//    // Request headers
//    [_request setValue:@"multipart/form-data" forHTTPHeaderField:@"Content-Type"];
//    [_request setValue:@"{subscription key}" forHTTPHeaderField:@"Ocp-Apim-Subscription-Key"];
//    // Request body
//    [_request setHTTPBody:[@"{body}" dataUsingEncoding:NSUTF8StringEncoding]];
//    
//    NSURLResponse *response = nil;
//    NSError *error = nil;
//    NSData* _connectionData = [NSURLConnection sendSynchronousRequest:_request returningResponse:&response error:&error];
//    
//    if (nil != error)
//    {
//        NSLog(@"+++++Error: %@", error);
//    }
//    else
//    {
//        NSError* error = nil;
//        NSMutableDictionary* json = nil;
//        NSString* dataString = [[NSString alloc] initWithData:_connectionData encoding:NSUTF8StringEncoding];
//        NSLog(@"------------%@", dataString);
//        
//        if (nil != _connectionData)
//        {
//            json = [NSJSONSerialization JSONObjectWithData:_connectionData options:NSJSONReadingMutableContainers error:&error];
//        }
//        
//        if (error || !json)
//        {
//            NSLog(@"+++++++++++Could not parse loaded json with error:%@", error);
//        }
//        
//        NSLog(@"-------------%@", json);
//        _connectionData = nil;
//    }
    
    NSString* path = @"https://api.projectoxford.ai/spid/v1.0/identificationProfiles";
    NSArray* array = @[
                       // Request parameters
                       @"entities=true",
                       ];
    
    NSString* string = [array componentsJoinedByString:@"&"];
    path = [path stringByAppendingFormat:@"?%@", string];
    
    NSLog(@"%@", path);
    
    NSMutableURLRequest* _request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:path]];
    [_request setHTTPMethod:@"POST"];
    // Request headers
    [_request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [_request setValue:@"24b2a23d92834673aefdd39cfd461aba" forHTTPHeaderField:@"Ocp-Apim-Subscription-Key"];
    // Request body
    
    [_request setHTTPBody:[@"Marriage" dataUsingEncoding:NSUTF8StringEncoding]];
    NSLog(@"%@",_request);
//    NSURLResponse *response = nil;
//    NSError *error = nil;
//    NSData* _connectionData = [NSURLConnection sendSynchronousRequest:_request returningResponse:&response error:&error];
    NSURLSessionDataTask *task = [[NSURLSession sharedSession] dataTaskWithRequest:_request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSData * _connectionData = data;
        NSLog(@"+++--------%@",response);
        NSLog(@"---------%@",data);
        if (!error) {
            NSLog(@"+++++++++++%@",error);
        }

    }];
    [task  resume];

    
//    if (nil != error)
//    {
//        NSLog(@"Error: %@", error);
//    }
//    else
//    {
//        NSError* error = nil;
//        NSMutableDictionary* json = nil;
//        NSString* dataString = [[NSString alloc] initWithData:_connectionData encoding:NSUTF8StringEncoding];
//        NSLog(@"%@", dataString);
//        
//        if (nil != _connectionData)
//        {
//            json = [NSJSONSerialization JSONObjectWithData:_connectionData options:NSJSONReadingMutableContainers error:&error];
//        }
//        
//        if (error || !json)
//        {
//            NSLog(@"Could not parse loaded json with error:%@", error);
//        }
//        
//        NSLog(@"%@", json);
//        _connectionData = nil;
//    }
    


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
