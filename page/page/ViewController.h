//
//  ViewController.h
//  page
//
//  Created by Lanusse Baptiste on 10/11/2015.
//  Copyright © 2015 Baptiste Lanusse. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *sv;
@property (weak, nonatomic) IBOutlet UIPageControl *laPage;

- (IBAction)changePage:(id)sender;

@end

