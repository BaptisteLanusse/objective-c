//
//  ViewController.m
//  page
//
//  Created by Lanusse Baptiste on 10/11/2015.
//  Copyright © 2015 Baptiste Lanusse. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize sv, laPage;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSArray *couleurs = [NSArray arrayWithObjects:[UIColor redColor], [UIColor greenColor], [UIColor blueColor], [UIColor cyanColor], [UIColor yellowColor], nil];
    for (int i = 0; i < couleurs.count; i++)
    {
        CGRect rectangle;
        rectangle.origin.x = sv.frame.size.width * i;
        rectangle.origin.y = 0;
        rectangle.size = sv.frame.size;
        
        UIView *subview = [[UIView alloc] initWithFrame:rectangle];
        subview.backgroundColor = [couleurs objectAtIndex:i];
        [sv addSubview:subview];
    }
    
    sv.contentSize = CGSizeMake(sv.frame.size.width * couleurs.count, sv.frame.size.height);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    CGFloat largeurPage = sv.frame.size.width;
    int page = floor((sv.contentOffset.x - largeurPage / 2) / largeurPage) + 1;
    laPage.currentPage = page;
}

- (IBAction)changePage:(id)sender {
    CGRect frame;
    frame.origin.x = sv.frame.size.width * laPage.currentPage;
    frame.origin.y = 0;
    frame.size = sv.frame.size;
    [sv scrollRectToVisible:frame animated:YES];
}

@end
