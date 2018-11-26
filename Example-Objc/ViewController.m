//
//  ViewController.m
//  Example-Objc
//
//  Created by Qiscus on 22/11/18.
//  Copyright © 2018 Qiscus. All rights reserved.
//

#import "ViewController.h"
@import MyChat;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
    
- (IBAction)clickLogin:(id)sender {
    NSString *target = @"hello";
    UIViewController *vc = [[MyChat shared] chatWithUser:target];
    [self.navigationController pushViewController:vc animated:YES];
}
    
@end
