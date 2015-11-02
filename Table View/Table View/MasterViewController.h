//
//  MasterViewController.h
//  Table View
//
//  Created by Lanusse Baptiste on 02/11/2015.
//  Copyright © 2015 Baptiste Lanusse. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController
{
    NSMutableArray *maListe;
}

@property (strong, nonatomic) DetailViewController *detailViewController;


@end

