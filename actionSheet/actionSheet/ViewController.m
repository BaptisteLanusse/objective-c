//
//  ViewController.m
//  actionSheet
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
    UIActionSheet *actionSheet = [[UIActionSheet alloc]
                                  initWithTitle:@"Voulez-vous arrêter l'application ?"
                                  delegate:self cancelButtonTitle:nil destructiveButtonTitle:nil
                                  otherButtonTitles:@"Oui", @"Non",@"Je ne sais pas", nil];
    actionSheet.actionSheetStyle = UIActionSheetStyleBlackOpaque;
    actionSheet.destructiveButtonIndex = 1;
    [actionSheet showInView:self.view];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
