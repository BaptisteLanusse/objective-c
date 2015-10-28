# objective-c
```
Cette partie teste Objective-C et XCode pour le développement d'applications iOS.
```
    OS X El Capitan
    Version 10.11.1
    Intel Core i5 3,2 GHz
    16 Go Ram

## Liste des commandes

```
cmd + <-			=>			Rotation à gauche
cmd + ->			=>			Rotation à droite
cmd + L 			=>			Verrouiller
Ctrl + cmd + Z 		=>			Secousse
Maj + cmd + H 		=>			Ecran d'accueil
```

## Outils de comparaison
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

## Switch
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

## Les Boucles
#### Boucle for:
```objective-c
for (début; condition de fin; incrément)
{
	//instructions
}
```

#### Boucle while:
```objective-c
while(condition)
{
	//instructions
}
```

#### Boucle do-while
```objective-c
do
{
	//instructions
}while(condition)
```

## Les fonctions
```objective-c
type nom(paramètres)
{
	//instructions
	return retour;
}
```

## Programmation orientée objet
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

#### Les méthodes de classe

Le format générique des méthodes est le suivant:

```objective-c
typeMethode (typeRetour) nomMethode : paramètres
{
	//instructions
};
```

Ou:

  - ```typeMethod``` vaut ```+``` pour une méthode de classe ou ```-``` pour une méthode d'instane
  - ```typeRetour``` est le type retourné par la méthode
  - ```nomMethode``` est le nom de la méthode
  - ```parametres``` correspond aux paramètres de la méthode, s'ils existent, composés de couples ```(type)nom``` séparés par des ```,```.


#### Appel de méthodes

L'appel de méthode en Objective-c se fait via l'instruction ```[objet methode];```

Si la méthode demande des paramètres, l'appel se fait via ```[objet methode:valeur1 param2:valeur2 param3:valeur3 ...];```

Ci-dessous, un exemple de création d'une méthode concat retournant la concaténation de deux chaines:

Dans le fichier ```.h```, dans la déclaration de l'interface:
```objective-c
-(NSString*) concat:(NSString*)ch1: (NSString*)ch2;
```

Dans le fichier ```.m```, dans l'implémentation des méthodes:
```objective-c
-(NSString*) concat:(NSString*)ch1: (NSString*)ch2
{
	return [ch1 stringByAppendingString:ch2];
}
```

#### Instanciation d'un objet

Il existe deux solutions pour instancier un objet, la première laisse à la machine le soin de gérer la libération de l'espace mémoire, la seconde impose à l'utilisateur de la libérer.

Depuis iOS 5, ARC (Automatic Reference Counting) a été intégré, et l'utilisateur n'a plus besoin de gérer la libération.

Par exemple, pour un objet NSString, les deux appels suivants déclarent le même objet, mais l'utilisateur devra libérer l'espace dans le second cas.

```objective-c
NSString* maChaine;
```

```objective-c
NSString* maChaine = [[NSString alloc] init];
```

Si ARC n'est pas actif, l'instruction pour détruire l'objet ```maChaine``` est: ```[maChaine dealloc]```

#### Cycle de vie d'un objet

Tous les objets suivent le même cycle de vie:

1. Création
2. Utilisation
3. Destruction

Arc gère automatiquement la destruction des objets.

#### Quelques Méthodes de classe utiles

###### Tester l'égalité de deux NSString

```objective-c
if ([chaine1 isEqualToString:chaine2])
{
	//Traitement
}
```

###### Longueur d'une chaine NSString

```objective-c
[chaine length];
```

###### Concaténer deux chaines NSString

```objective-c
[NSString stringWithFormat:@"%@%@", chaine1, chaine2];
```

###### Création d'une chaine NSString à partir d'une chaine char*

```objective-c
char *chaineC;
NSString *chaineObjC;
//Instructions
chaineObjC = [NSString stringWithString: chaineC];
```

###### Parcourir un NSString caractère par caractère

```objective-c
NSString* chaine = @"helloworld";
int length = [chaine length], cpt;
char lettre;
for(cpt = 0; cpt < length; cpt++)
{
	lettre = [chaine characterAtIndex:cpt];
	NSLog(@"La lettre en position %i est %c", cpt, lettre);
}
```

###### Affichage de la date courante

```objective-c
/* ---Définition de l'objet date et de sa mise en forme--- */

// Aujourd'hui
NSDate *date = [NSDate date];
NSDateFormatter *miseEnForme = [[NSDateFormatter alloc] init];

// Aucun affichage de l'heure
[miseEnForme setTimeStyle:NSDateFormatterNoStyle];

// Affichage de la date au format semi-abrégé
[miseEnForme setDateStyle:NSDateFormatterMediumStyle];

/* ---Affichage de la date au format US--- */
NSLocale *usLocale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US"];
[miseEnForme setLocale:usLocale];
NSLog(@"Date au format %@: %@", [[miseEnForme locale] localeIdentifier], [miseEnForme stringFromDate:date]);

/* ---Affichage de la date au format FR--- */
NSLocale *frLocale = [[NSLocale alloc] initWithLocaleIdentifier:@"fr_FR"];
[miseEnForme setLocale:frLocale];
NSLog(@"Date au format %@: %@", [[miseEnForme locale] localeIdentifier], [miseEnForme stringFromDate:date]);
```

## Réalisations

###### TP - Mastermind

Un jeu de mastermind basique se jouant avec les nombres.

###### Test

Une application testant les fonctionnalités de base d'Objective-C