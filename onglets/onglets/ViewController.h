//
//  ViewController.h
//  onglets
//
//  Created by Lanusse Baptiste on 10/11/2015.
//  Copyright © 2015 Baptiste Lanusse. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISegmentedControl *onglets;
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UILabel *sousTitre;

- (IBAction)ongletChange:(id)sender;

@end

