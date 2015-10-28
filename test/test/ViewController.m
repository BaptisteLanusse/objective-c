//
//  ViewController.m
//  test
//
//  Created by Lanusse Baptiste on 28/10/2015.
//  Copyright © 2015 Baptiste Lanusse. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

struct unePersonne
{
    char *prenom;
    char *nom;
    int age;
};

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"\nDEBUG ----- Everything went OK, App launched.\n\n\n\n");
    
    struct unePersonne schwarzi;
    schwarzi.prenom = "Arnold";
    schwarzi.nom = "Schwarzenegger";
    schwarzi.age = 64;
    
    NSLog(@"DEV ----- cast Ascii depuis un int\n");
    int valeurAscii = 125;
    char caractere = (char)valeurAscii;
    NSLog(@"DEV ----- Resultat du cast: '%c'\n\n\n\n", caractere);
    
    NSLog(@"DEV ----- Test d'implémentation d'une méthode d'instance\n");
    NSLog(@"DEV ----- %@\n\n\n\n", [self concat:@"premier " :@"deuxième"]);
    
    NSLog(@"DEV ----- Test de parcours d'une chaine caractère par caractère\n");
    NSString* chaine = @"helloworld";
    int length = [chaine length], cpt;
    char lettre;
    for(cpt = 0; cpt < length; cpt++)
    {
        lettre = [chaine characterAtIndex:cpt];
        NSLog(@"La lettre en position %i est %c", cpt, lettre);
    }
    
    NSLog(@"\n\n\n\n");
    
    NSLog(@"DEV ----- Test d'affichage de date aux formats us et fr");
    
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
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSString*) concat:(NSString*)ch1: (NSString*)ch2{
    return [ch1 stringByAppendingString:ch2];
}

@end
