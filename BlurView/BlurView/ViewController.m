//
//  ViewController.m
//  BlurView
//
//  Created by Anik on 12/4/16.
//  Copyright © 2016 mTeam. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
  
}
- (IBAction)placeTapped:(id)sender {
    NSLog(@"place tapped");
}
- (IBAction)profileTapped:(id)sender {
    NSLog(@"profile tapped");
}
- (IBAction)friendTapped:(id)sender {
    NSLog(@"friend tapped");
}
- (IBAction)messageTapped:(id)sender {
    NSLog(@"message tapped");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
