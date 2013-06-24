//
//  ViewController.h
//  HelloWorld
//
//  Created by iD Student on 6/24/13.
//  Copyright (c) 2013 James. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *storyLabel;

@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)buttonPressed:(id)sender;
- (IBAction)storyButton:(id)sender;

@end
