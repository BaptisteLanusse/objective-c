//
//  ViewController.h
//  datePicker
//
//  Created by Lanusse Baptiste on 10/11/2015.
//  Copyright © 2015 Baptiste Lanusse. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIDatePicker *dp;
@property (weak, nonatomic) IBOutlet UILabel *status;

- (IBAction)selectionner:(id)sender;

@end

