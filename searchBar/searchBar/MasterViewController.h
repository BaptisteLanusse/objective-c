//
//  MasterViewController.h
//  searchBar
//
//  Created by Lanusse Baptiste on 10/11/2015.
//  Copyright © 2015 Baptiste Lanusse. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController
{
    NSMutableArray *maListe;
    NSMutableArray *tampon;
    NSMutableArray *tampon2;
}

@property (strong, nonatomic) DetailViewController *detailViewController;

@property (strong, nonatomic) IBOutlet UITableView *laListe;
@property (weak, nonatomic) IBOutlet UISearchBar *recherche;

@end

