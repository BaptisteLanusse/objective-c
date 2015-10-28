//
//  ViewControllerWeb.m
//  Controles Affichage Données
//
//  Created by Lanusse Baptiste on 28/10/2015.
//  Copyright © 2015 Baptiste Lanusse. All rights reserved.
//

#import "ViewControllerWeb.h"

@interface ViewControllerWeb ()

@end

@implementation ViewControllerWeb

@synthesize webView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [webView loadRequest:[NSURLRequest requestWithURL: [NSURL URLWithString:@"http://www.google.fr"]]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
