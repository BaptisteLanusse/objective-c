//
//  ViewController.m
//  Controles Affichage Données
//
//  Created by Lanusse Baptiste on 28/10/2015.
//  Copyright © 2015 Baptiste Lanusse. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize monLabel;
@synthesize monTextField;
@synthesize maTextView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    monLabel.text = @"Un court texte affiché dans le contrôle Label sur deux lignes";
    monLabel.numberOfLines = 2;
    monLabel.font = [UIFont fontWithName:@"Courier" size:10.0f];
    monLabel.textAlignment = NSTextAlignmentCenter;
    monLabel.textColor = [UIColor colorWithRed: 1.0f green: 0.0f blue: 0.0f alpha: 1.0f];
    
    monTextField.textAlignment = NSTextAlignmentCenter;
    monTextField.placeholder = @"Texte affiché en attendant la saisie";
    
    maTextView.textAlignment = NSTextAlignmentLeft;
    maTextView.font = [UIFont fontWithName:@"Courier" size:10.0f];
    maTextView.textColor = [UIColor colorWithRed:0.0f green:1.0f blue:1.0f alpha:1.0f];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
