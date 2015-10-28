# objective-c
```
Cette partie teste Objective-C et XCode pour le développement d'applications iOS.
```
    OS X El Capitan
    Version 10.11.1
    Intel Core i5 3,2 GHz
    16 Go Ram

# Liste des commandes

```
cmd + <-			=>			Rotation à gauche
cmd + ->			=>			Rotation à droite
cmd + L 			=>			Verrouiller
Ctrl + cmd + Z 		=>			Secousse
Maj + cmd + H 		=>			Ecran d'accueil
```

# Outils de comparaison
Les tests sont effectués via l'instruction if.

Les traitements sont traités dans l'autre suivant:

```
Parenthèses                         |                   ()
Changement de signe                 |                   -
incrémentation ou décrémentation    |                   ++ et --
Négation                            |                   !
Multiplication, division, modulo    |                   *, / et %
Addition, soustraction              |                   + et -
tests supériorité, infériorité      |                   <, <=, > et >=
Egalité, différence                 |                   == et !=
ET logique                          |                   &&
OU logique                          |                   ||
Affectation                         |                   =
```

# Switch
```objective-c
switch (variable)
{
	case valeur1:
		//instructions;
		break;
	case valeur2:
		//instructions;
		break;
	case valeur3:
		//instructions;
		break;
	...
	default:
		//instructions;
		break;
}
```

# Les Boucles
Boucle for:
```objective-c
for (début; condition de fin; incrément)
{
	//instructions
}
```

Boucle while:
```objective-c
while(condition)
{
	//instructions
}
```

Boucle do-while
```objective-c
do
{
	//instructions
}while(condition)
```

# Les fonctions
```objective-c
type nom(paramètres)
{
	//instructions
	return retour;
}
```

# Programmation orientée objet
Séparation des fichiers en headers et corps.

Les fichiers headers sont mentionnés ```.h```

Le corps des méthodes et accesseurs n'est remplit que dans les fichiers de corps. On ne met que leur en-tête dans les fichiers ```.h```

Exemple d'un fichier ```.h```:
```objective-c
//fichier Voiture.h
#import <UIKit/UIKit.h> //import du framework UIKit
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
```

Le corps de la classe est défini dans le fichier de corps ```.m```

Exemple d'un fichier ```.m```:
```objective-c
//fichier Voiture.m
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
```