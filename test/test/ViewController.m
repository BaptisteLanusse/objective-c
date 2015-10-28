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
    NSLog(@"DEV ----- %@", [self concat:@"premier " :@"deuxième"]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSString*) concat:(NSString*)ch1: (NSString*)ch2{
    return [ch1 stringByAppendingString:ch2];
}

@end
