//
//  ViewControllerMap.m
//  Controles Affichage Données
//
//  Created by Lanusse Baptiste on 28/10/2015.
//  Copyright © 2015 Baptiste Lanusse. All rights reserved.
//

#import "ViewControllerMap.h"

@interface ViewControllerMap ()

@end

@implementation ViewControllerMap

@synthesize mapView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    MKCoordinateSpan span;
    span.latitudeDelta = 0.5;
    span.longitudeDelta = 0.5;
    
    CLLocationCoordinate2D parisCoordinates;
    parisCoordinates.latitude = 48.858391;
    parisCoordinates.longitude = 2.35279;
    
    MKCoordinateRegion parisRegion;
    parisRegion.span = span;
    parisRegion.center = parisCoordinates;
    
    [mapView setRegion:parisRegion animated:YES];
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
