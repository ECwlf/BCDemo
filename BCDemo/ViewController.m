//
//  ViewController.m
//  BCDemo
//
//  Created by linfeng wang on 2017/6/8.
//  Copyright © 2017年 linfeng wang. All rights reserved.
//

#import "ViewController.h"

#ifdef DEBUG
#define searchURL @"http://www.baidu.com"
#define sociaURL  @"weibo.com"
#elif DEBUGTEST
#define searchURL @"http://www.bing.com"
#define sociaURL  @"twitter.com"
#else
#define searchURL @"http://www.google.com"
#define sociaURL  @"facebook.com"
#endif

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"%@",searchURL);
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *path = [bundle pathForResource:@"Configuration" ofType:@"plist"];
    NSDictionary *config = [NSDictionary dictionaryWithContentsOfFile:path];
    NSLog(@"%@",config);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
