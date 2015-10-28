//
//  ViewControllerImages.h
//  Controles Affichage Données
//
//  Created by Lanusse Baptiste on 28/10/2015.
//  Copyright © 2015 Baptiste Lanusse. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewControllerImages : UIViewController <UINavigationControllerDelegate, UIImagePickerControllerDelegate>
{
    UIImagePickerController *picker;
}

@property (weak, nonatomic) IBOutlet UIImageView *monImage;

- (IBAction)album:(id)sender;

- (IBAction)resource:(id)sender;

- (IBAction)net:(id)sender;

@end
