//
//  ViewControllerImages.m
//  Controles Affichage Données
//
//  Created by Lanusse Baptiste on 28/10/2015.
//  Copyright © 2015 Baptiste Lanusse. All rights reserved.
//

#import "ViewControllerImages.h"

@interface ViewControllerImages ()

@end

@implementation ViewControllerImages

@synthesize monImage;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSURL *image = [NSURL URLWithString:@"http://www.siteduzero.com/uploads/fr/ftp/iphone/zozor.png"];
    UIImage *img = [UIImage imageWithData:[NSData dataWithContentsOfURL:image]];
    NSData* imageData = UIImagePNGRepresentation(img);
    [imageData writeToFile:[NSHomeDirectory() stringByAppendingPathComponent:@"Documents/image.png"] atomically:NO];
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

- (IBAction)resource:(id)sender {
    monImage.image = [UIImage imageNamed:@"image.png"];
}

- (IBAction)net:(id)sender {
    NSURL *netImage = [NSURL URLWithString:@"http://www.siteduzero.com/uploads/fr/ftp/iphone/zozor.png"];
    monImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:netImage]];
}

- (IBAction)sandbox:(id)sender {
    //Récupération du fichier dans la sandbox et affichage dans le Image View
    NSString *image = [NSHomeDirectory() stringByAppendingPathComponent:@"Documents/image.png"];
    UIImage *recup = [UIImage imageWithContentsOfFile:image];
    monImage.image = recup;
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
