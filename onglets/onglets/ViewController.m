//
//  ViewController.m
//  onglets
//
//  Created by Lanusse Baptiste on 10/11/2015.
//  Copyright © 2015 Baptiste Lanusse. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize onglets, image, sousTitre;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIImage *imageCourante = [UIImage imageNamed:@"cheval.jpg"];
    [image setImage: imageCourante];
    sousTitre.text = @"Un cheval et sa cavalière";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ongletChange:(id)sender {
    if (onglets.selectedSegmentIndex == 0)
    {
        UIImage *imageCourante = [UIImage imageNamed: @"cheval.jpg"];
        [image setImage: imageCourante];
        sousTitre.text = @"Un cheval et sa cavalière";
    }
    if (onglets.selectedSegmentIndex == 1)
    {
        UIImage *imageCourante = [UIImage imageNamed: @"chien.jpg"];
        [image setImage: imageCourante];
        sousTitre.text = @"Un chien";
    }
    if (onglets.selectedSegmentIndex == 2)
    {
        UIImage *imageCourante = [UIImage imageNamed: @"chat.jpg"];
        [image setImage: imageCourante];
        sousTitre.text = @"Un chat";
    }
}

@end
