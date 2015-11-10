//
//  ViewController.h
//  ouSuisJe
//
//  Created by Lanusse Baptiste on 10/11/2015.
//  Copyright © 2015 Baptiste Lanusse. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController <CLLocationManagerDelegate>
{
    CLLocationManager *locationManager;
}

@property (weak, nonatomic) IBOutlet UILabel *maPosition;

@end

