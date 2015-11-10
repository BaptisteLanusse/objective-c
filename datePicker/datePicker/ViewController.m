//
//  ViewController.m
//  datePicker
//
//  Created by Lanusse Baptiste on 10/11/2015.
//  Copyright © 2015 Baptiste Lanusse. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize dp, status;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)selectionner:(id)sender {
    NSLocale *frLocale = [[NSLocale alloc] initWithLocaleIdentifier:@"fr_FR"];
    NSDate *pickerDate = [dp date];
    NSString *select = [[NSString alloc] initWithFormat:@"%@", [pickerDate descriptionWithLocale:frLocale]];
    status.text = select;
}

@end
