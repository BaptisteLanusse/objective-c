//
//  Voiture.m
//  test
//
//  Created by Lanusse Baptiste on 28/10/2015.
//  Copyright © 2015 Baptiste Lanusse. All rights reserved.
//

#import "Voiture.h"

@implementation Voiture
// Corps du getter de modele
-(NSString*) modele {
    return modele;
}
// Corps du getter de couleur
-(NSString*) couleur {
    return couleur;
}
// Corps du setter de modele
- (void) setModele: (NSString*)nouvModele {
    modele = nouvModele;
}
// Corps du setter de couleur
- (void) setCouleur: (NSString*)nouvCouleur {
    couleur = nouvCouleur;
}
// Constructeur de la classe
- (id) init {
    if ( self = [super init])
    {
        [self setModele:@"Maserati Spyder"];
        [self setCouleur:@"Rouge"];
    }
    return self;
}

@end