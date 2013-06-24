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


- (IBAction)change:(id)sender {
    UIButton *buttonPressed = (UIButton *)sender;
    if(buttonPressed == redButton){
        [self.view setBackgroundColor:[UIColor redColor]];
        colorLabel.text = @"The Color is red";
        }
    if (buttonPressed == orangeButton) {
        [self.view setBackgroundColor:[UIColor orangeColor]];
    }
}
@end
