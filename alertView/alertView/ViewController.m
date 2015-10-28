//
//  ViewController.m
//  alertView
//
//  Created by Lanusse Baptiste on 28/10/2015.
//  Copyright © 2015 Baptiste Lanusse. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Voulez-vous arrêter ?" message:@"Confirmez que vous voulez quitter l'application" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *defaultAction = [UIAlertAction actionWithTitle:@"Confirmer" style:UIAlertActionStyleDefault handler:nil];
    
    [alert addAction:defaultAction];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Annuler" style:UIAlertActionStyleCancel handler:nil];
    
    [alert addAction:cancelAction];
    
    [self presentViewController:alert animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
