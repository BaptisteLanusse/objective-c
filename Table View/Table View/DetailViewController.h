//
//  DetailViewController.h
//  Table View
//
//  Created by Lanusse Baptiste on 02/11/2015.
//  Copyright © 2015 Baptiste Lanusse. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id texteAAfficher;

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *donneeRecue;

@end

