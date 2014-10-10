//
//  ViewController.m
//  TodayExtensionSharingDefaults
//
//  Created by ThanhLinh on 10/10/14.
//  Copyright (c) 2014 ThanhLinh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController
- (IBAction)setPressedButton:(UIButton *)sender {
    NSUserDefaults *sharedDefaults = [[NSUserDefaults alloc] initWithSuiteName:@"group.ivc.TodayExtensionSharingDefaults"];
    
    [sharedDefaults setInteger:[self.textField.text integerValue] forKey:@"MyNumberKey"];
    [sharedDefaults synchronize];   // (!!) This is crucial.
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
