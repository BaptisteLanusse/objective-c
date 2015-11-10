//
//  ViewController.m
//  toolBar
//
//  Created by Lanusse Baptiste on 10/11/2015.
//  Copyright © 2015 Baptiste Lanusse. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize leLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Noir:(id)sender {
    leLabel.textColor = [UIColor blackColor];
}

- (IBAction)Rouge:(id)sender {
    leLabel.textColor = [UIColor redColor];
}

- (IBAction)Gauche:(id)sender {
    leLabel.textAlignment = NSTextAlignmentLeft;
}

- (IBAction)Centre:(id)sender {
    leLabel.textAlignment = NSTextAlignmentCenter;
}

@end
