//
//  ViewController.m
//  Keychain Sharing Demo
//
//  Created by 彭盛凇 on 2019/3/8.
//  Copyright © 2019 彭盛凇. All rights reserved.
//

#import "ViewController.h"
#import <SAMKeychain.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)get:(id)sender {
    
    NSString *str = [SAMKeychain passwordForService:@"pss_Service" account:@"pss_account"];
    self.label.text = str;
}

- (IBAction)didSelected:(id)sender {
    
    [SAMKeychain setPassword:@"pss_passwork" forService:@"pss_Service" account:@"pss_account"];
    
}
- (IBAction)delete:(id)sender {
    
    [SAMKeychain deletePasswordForService:@"pss_Service" account:@"pss_account"];
}

@end
