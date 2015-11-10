//
//  ViewController.h
//  picker
//
//  Created by Lanusse Baptiste on 10/11/2015.
//  Copyright © 2015 Baptiste Lanusse. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>
{
    NSMutableArray *maListe;
}

@property (weak, nonatomic) IBOutlet UIPickerView *pv;
@property (weak, nonatomic) IBOutlet UILabel *status;

@end

