//
//  ViewController.m
//  HelloWorld
//
//  Created by iD Student on 6/24/13.
//  Copyright (c) 2013 James. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize label;
@synthesize storyLabel;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonPressed:(id)sender{
    label.text = @"Hello Friend";
}

- (IBAction)storyButton:(id)sender {
    storyLabel.text = @"All about how my life got";
    label.text = @"Flipped turned upside down";
    
}
@end
