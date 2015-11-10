//
//  ViewController.m
//  picker
//
//  Created by Lanusse Baptiste on 10/11/2015.
//  Copyright © 2015 Baptiste Lanusse. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize status, pv;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    maListe = [[NSMutableArray alloc] init];
    [maListe addObject:@"Paris"];
    [maListe addObject:@"Lyon"];
    [maListe addObject:@"Marseille"];
    [maListe addObject:@"Toulouse"];
    [maListe addObject:@"Nantes"];
    [maListe addObject:@"Nice"];
    [maListe addObject:@"Bordeaux"];
    [maListe addObject:@"Montpellier"];
    [maListe addObject:@"Rennes"];
    [maListe addObject:@"Lille"];
    [maListe addObject:@"Le Havre"];
    [maListe addObject:@"Reims"];
    [maListe addObject:@"Le Mans"];
    [maListe addObject:@"Dijon"];
    [maListe addObject:@"Grenoble"];
    [maListe addObject:@"Brest"];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return [maListe count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return [maListe objectAtIndex:row];
}

- (void) pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    status.text = [maListe objectAtIndex:row];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
