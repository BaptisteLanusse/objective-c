//
//  Voiture.h
//  test
//
//  Created by Lanusse Baptiste on 28/10/2015.
//  Copyright © 2015 Baptiste Lanusse. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Voiture : NSObject
{
    NSString *modele;
    NSString *couleur;
}
- (NSString*) modele; //en-tête du getter de modele
- (NSString*) couleur; //en-tête du getter de couleur
- (void) setModele: (NSString*)input; //en-tête du setter du modele
- (void) setCouleur: (NSString*)input; //en-tête du setter de la couleur
@end