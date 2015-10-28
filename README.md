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

## Controles d'affichage de données

###### Label - Texte non modifiable

Le contrôle ```Label``` permet d'afficher du texte non modifiable.

```objective-c
monLabel.text = @"Un court texte affiché dans le contrôle Label sur deux lignes";
monLabel.numberOfLines = 2;
monLabel.font = [UIFont fontWithName:@"Courier" size:10.0f];
monLabel.textAlignment = NSTextAlignmentCenter;
monLabel.textColor = [UIColor colorWithRed: 1.0f green: 0.0f blue: 0.0f alpha: 1.0f];
```

###### Text Field - Saisie de texte sur une ligne

Le contrôle ```Text Field``` permet la saisie de texte sur une ligne.

```objective-c
monTextField.textAlignment = NSTextAlignmentCenter;
monTextField.placeholder = @"Texte afiché en attendant la saisie";
```

###### Text View - Saisie de texte sur plusieurs lignes

Le contrôle ```Text View``` permet la saisie de texte sur plusieurs lignes.

```objective-c
maTextView.textAlignment = NSTextAlignmentLeft;
maTextView.font = [UIFont fontWithName:@"Courier" size:10.0f];
maTextView.textColor = [UIColor colorWithRed:0.0f green:1.0f blue:1.0f alpha:1.0f];
```

###### Image View - Affichage d'une image

Le contrôle ```Image View``` permet l'affichage d'une image.

###### *Image dans l'album:*

dans le ```.h```:
```objective-c
#import <UIKit/UIKit.h>

@interface ViewControllerImages : UIViewController <UINavigationControllerDelegate, UIImagePickerControllerDelegate>
{
    UIImagePickerController *picker;
}

@property (weak, nonatomic) IBOutlet UIImageView *monImage;

- (IBAction)album:(id)sender;

@end
```

dans le ```.m```:
```objective-c
#import "ViewControllerImages.h"

@interface ViewControllerImages ()

@end

@implementation ViewControllerImages

@synthesize monImage;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)album:(id)sender {
    picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentViewController:picker animated:YES completion:nil];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info {
    monImage.image = [info objectForKey:UIImagePickerControllerOriginalImage];
    [picker dismissViewControllerAnimated:YES completion:nil];
}

- (void) imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    [picker dismissViewControllerAnimated:YES completion:nil];
    monImage.image = nil;
}

@end
```

###### *Image en ressource de l'application:*

Si l'image est dans les ressources de l'application, on procède comme suit:

dans le ```.h```, l'appel depuis l'appui sur un bouton à:
```objective-c
- (IBAction)resource:(id)sender;
```

et dans le ```.m```, pour une image appelée ```image.png``` et placée dans le groupe ```Resources```:
```objective-c
- (IBAction)resource:(id)sender {
    monImage.image = [UIImage imageNamed:@"image.png"];
}
```

###### *Image sur le net:*

Si l'image est sur le net, on procède comme suit:

D'abord, dans Info.plist, sous Information Property List, il faut ajouter App Transport Security Settings, et à l'intérieur, Allow Arbitrary Loads et le mettre à YES

ensuite, dans le ```.h```, l'appel depuis l'appui sur un bouton à:
```objective-c
- (IBAction)net:(id)sender;
```

et dans le ```.m```, pour l'url http://www.siteduzero.com/uploads/fr/ftp/iphone/zozor.png:
```objective-c
- (IBAction)net:(id)sender {
    NSURL *netImage = [NSURL URLWithString:@"http://www.siteduzero.com/uploads/fr/ftp/iphone/zozor.png"];
    monImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:netImage]];
}
```

###### *Image dans la sandbox:*

Si l'image est stockée dans la sandbox de l'application, il faut procéder comme suit:

dans le fichier ```.h```, l'appel depuis l'appui sur un bouton à:
```objective-c
- (IBAction)sandbox:(id)sender;
```

et dans le ```.m```:
```objective-c
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSURL *image = [NSURL URLWithString:@"http://www.siteduzero.com/uploads/fr/ftp/iphone/zozor.png"];
    UIImage *img = [UIImage imageWithData:[NSData dataWithContentsOfURL:image]];
    NSData* imageData = UIImagePNGRepresentation(img);
    [imageData writeToFile:[NSHomeDirectory() stringByAppendingPathComponent:@"Documents/image.png"] atomically:NO];
}

- (IBAction)sandbox:(id)sender {
    //Récupération du fichier dans la sandbox et affichage dans le Image View
    NSString *image = [NSHomeDirectory() stringByAppendingPathComponent:@"Documents/image.png"];
    UIImage *recup = [UIImage imageWithContentsOfFile:image];
    monImage.image = recup;
}
```

###### Web View - Affichage de contenu Web

Le composant ```Web View``` permet d'afficher le contenu d'une page web.

Dans le ```.h```:
```objective-c
#import <UIKit/UIKit.h>

@interface ViewControllerWeb : UIViewController

@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

```

Et dans le ```.m```:
```objective-c
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
```

###### Map View - Affichage de contenu Web

Le composant ```Map View``` permet d'afficher une carte.

Il est nécessaire d'ajouter le framework MapKit via Build Phases, Link Binary With Libraries et ajouter MapKit.

Puis, dans le ```.h```:
```objective-c
#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewControllerMap : UIViewController

@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end
```

Et dans le ```.m```:
```objective-c
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
```

###### Scroll View - Contenu trop grand pour l'écran

Dans ```ViewController.h```, avec une scrollView, et à l'intérieur une imageView:
```objective-c
#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end
```

Et dans le ```.m```:
```objective-c
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize scrollView;
@synthesize imageView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [scrollView setScrollEnabled:YES];
    [scrollView setContentSize:CGSizeMake(imageView.image.size.width, imageView.image.size.height)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
```

## Demander l'avis utilisateur

###### UIAlertView

Dans le ```viewController.m```:
```objective-c
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Voulez-vous arrêter ?" message:@"Confirmez que vous voulez quitter l'application" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *defaultAction = [UIAlertAction actionWithTitle:@"Confirmer" style:UIAlertActionStyleDefault handler:nil];
    
    [alert addAction:defaultAction];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Annuler" style:UIAlertActionStyleCancel handler:nil];
    
    [alert addAction:cancelAction];
    
    [self presentViewController:alert animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
```

## Réalisations

###### TP - Mastermind

Un jeu de mastermind basique se jouant avec les nombres.

###### Test

Une application testant les fonctionnalités de base d'Objective-C.

###### Application Multi-vues

Cette application permet de tester la navigation entre les différentes vues d'une application.

###### Controles Affichage Données

Cette application permet de visualiser les différentes méthodes d'affichage de données.