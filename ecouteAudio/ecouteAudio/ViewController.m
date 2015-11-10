//
//  ViewController.m
//  ecouteAudio
//
//  Created by Lanusse Baptiste on 10/11/2015.
//  Copyright © 2015 Baptiste Lanusse. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    SystemSoundID bravo;
    AudioServicesCreateSystemSoundID(CFBundleCopyResourceURL(CFBundleGetMainBundle(), CFSTR("applaudissements"), CFSTR("caf"), NULL), &bravo);
    AudioServicesPlaySystemSound(bravo);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
