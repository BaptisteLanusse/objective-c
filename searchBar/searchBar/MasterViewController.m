//
//  MasterViewController.m
//  searchBar
//
//  Created by Lanusse Baptiste on 10/11/2015.
//  Copyright © 2015 Baptiste Lanusse. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"

@interface MasterViewController ()

@property NSMutableArray *objects;
@end

@implementation MasterViewController

@synthesize laListe, recherche;

- (void)viewDidLoad {
    [super viewDidLoad];
    maListe = [[NSMutableArray alloc] init];
    tampon = [[NSMutableArray alloc] init];
    [maListe addObject:@"Paris"];
    [maListe addObject:@"Lyon"];
    [maListe addObject:@"Marseille"];
    [maListe addObject:@"Toulouse"];
    [maListe addObject:@"Nantes"];
    [maListe addObject:@"Nice"];
    [maListe addObject:@"Bordeaux"];
    [maListe addObject:@"Montpellier"];
    [maListe addObject:@"Rennes"];
    [maListe addObject:@"Lille"];
    [maListe addObject:@"Le Havre"];
    [maListe addObject:@"Reims"];
    [maListe addObject:@"Le Mans"];
    [maListe addObject:@"Dijon"];
    [maListe addObject:@"Grenoble"];
    [maListe addObject:@"Brest"];
    [tampon addObjectsFromArray:maListe];
    
    self.detailViewController = (DetailViewController *)[[self.splitViewController.viewControllers lastObject] topViewController];
}

- (void)viewWillAppear:(BOOL)animated {
    self.clearsSelectionOnViewWillAppear = self.splitViewController.isCollapsed;
    [super viewWillAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSDate *object = self.objects[indexPath.row];
        DetailViewController *controller = (DetailViewController *)[[segue destinationViewController] topViewController];
        [controller setDetailItem:object];
        controller.navigationItem.leftBarButtonItem = self.splitViewController.displayModeButtonItem;
        controller.navigationItem.leftItemsSupplementBackButton = YES;
    }
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [maListe count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    NSString *cellValue = [maListe objectAtIndex:indexPath.row];
    cell.textLabel.text = cellValue;
    return cell;
}

- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText
{
    tampon2 = [[NSMutableArray alloc] init];
    [tampon2 addObjectsFromArray:tampon];
    [maListe removeAllObjects];
    if([searchText isEqualToString:@""])
    {
        [maListe removeAllObjects];
        [maListe addObjectsFromArray:tampon]; // Restitution des données originales
        return;
    }
    
    for(NSString *name in tampon2)
    {
        NSRange r = [name rangeOfString:searchText];
        if(r.location != NSNotFound)
        {
            if(r.location== 0)
                [maListe addObject:name];
        }
    }
}

@end
