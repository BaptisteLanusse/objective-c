//
//  ViewController.m
//  TP - Mastermind
//
//  Created by Lanusse Baptiste on 28/10/2015.
//  Copyright © 2015 Baptiste Lanusse. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize proposition;
@synthesize answer;

#pragma mark - Memory Warning Actions

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - View lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    nombreChoisi = arc4random() % 9000 + 1000;
    
}

- (IBAction)chooseNumber:(id)sender {
    nombreChoisi = arc4random() % 9000 + 1000;
    
    answer.text = [NSString stringWithFormat:@"%@", @"J'ai choisi un nouveau nombre\r"];
}

- (IBAction)propositionReturn:(id)sender {
    [sender resignFirstResponder];
    
    if ([proposition.text length] != 4)
    {
        answer.text = @"Vous êtes prié de bien vouloir saisir un nombre à 4 chiffres. Sélection d'un nouveau nombre.";
        nombreChoisi = arc4random() % 9000 + 1000;
    } else {
        int bienPlace = 0, charIndex;
        
        unichar testChar1, testChar2;
        
        for (charIndex = 0; charIndex < 4; charIndex++)
        {
            testChar1 = [proposition.text characterAtIndex:charIndex];
            testChar2 = [[NSString stringWithFormat:@"%d", nombreChoisi] characterAtIndex:charIndex];
            if (testChar1 == testChar2) {
                bienPlace++;
            }
        }
        answer.text = [NSString stringWithFormat:@"%@%@%d%@%@", proposition.text, @" : Bien placés : ", bienPlace, @"\r", answer.text];
        if (bienPlace == 4)
        {
            answer.text = [NSString stringWithFormat:@"%@%d", @"Bravo, le résultat était ", nombreChoisi];
        }
    }
    
}

@end
