//
//  ViewControllerMap.h
//  Controles Affichage Données
//
//  Created by Lanusse Baptiste on 28/10/2015.
//  Copyright © 2015 Baptiste Lanusse. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewControllerMap : UIViewController

@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end
