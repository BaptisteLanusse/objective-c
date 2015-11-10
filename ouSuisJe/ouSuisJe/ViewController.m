//
//  ViewController.m
//  ouSuisJe
//
//  Created by Lanusse Baptiste on 10/11/2015.
//  Copyright © 2015 Baptiste Lanusse. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize maPosition;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    locationManager = [[CLLocationManager alloc] init];
    if ([CLLocationManager locationServicesEnabled])
    {
        locationManager.delegate = self;
        locationManager.desiredAccuracy = kCLLocationAccuracyBest;
        locationManager.distanceFilter = 100.0f;
        [locationManager startUpdatingLocation];
    }
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(nonnull NSArray<CLLocation *> *)locations
{
    maPosition.text = [[locations objectAtIndex:0] description];
}

- (void) locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error
{
    maPosition.text = [error description];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
