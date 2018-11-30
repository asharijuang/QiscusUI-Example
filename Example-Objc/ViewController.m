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
    @property (weak, nonatomic) IBOutlet UILabel *labelWelcome;
    
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.labelWelcome.text = @"Please Login";
    if ([MyChat isLogined]) {
        self.labelWelcome.text = @"Welcome";
    };
    
}
    
- (IBAction)clickLogin:(id)sender {
    NSString *target = @"QiscusTester1";
    [[MyChat shared] setupWithAppId:@"chatbot-h3epiudknsanf" userEmail:target userKey:target username:target avatarURL:@"https://res.cloudinary.com/qiscus/image/upload/v1492675291/kiwari-prod_user_id_169/jjgbgrln7u9sdc0pw8s3.jpg" extras:nil];
}
    
- (IBAction)clickChat:(id)sender {
    NSString *target = @"myim3bot@indosatooredoo.com";
    UIViewController *vc = [[MyChat shared] chatWithUser:target];
    [self.navigationController pushViewController:vc animated:YES];
}
- (IBAction)sayHi:(id)sender {
    // say hi to indira
    NSString *target = @"myim3bot@indosatooredoo.com";
    NSDictionary *extras = @{@"hidden": @YES};
    [[MyChat shared] postMessageWithUser:target message:@"Hi" extras:extras];
}

- (IBAction)clickLogout:(id)sender {
    [[MyChat shared] logout];
}

- (IBAction)clearMessage:(id)sender {
    NSString *target = @"myim3bot@indosatooredoo.com";
    [[MyChat shared] clearMessageWithUser:target];
}
    
@end
