//
//  ViewController.h
//  toolBar
//
//  Created by Lanusse Baptiste on 10/11/2015.
//  Copyright © 2015 Baptiste Lanusse. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *leLabel;

- (IBAction)Noir:(id)sender;
- (IBAction)Rouge:(id)sender;
- (IBAction)Gauche:(id)sender;
- (IBAction)Centre:(id)sender;

@end

