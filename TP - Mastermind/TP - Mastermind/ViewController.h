//
//  ViewController.h
//  TP - Mastermind
//
//  Created by Lanusse Baptiste on 28/10/2015.
//  Copyright © 2015 Baptiste Lanusse. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    int nombreChoisi;
}

@property (weak, nonatomic) IBOutlet UITextField *proposition;

@property (weak, nonatomic) IBOutlet UITextView *answer;

- (IBAction)chooseNumber:(id)sender;

- (IBAction)propositionReturn:(id)sender;

@end

