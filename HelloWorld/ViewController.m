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
//@synthesize option;
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



- (IBAction)rockButtonPressed:(id)sender {
    player1Image.image = [UIImage imageNamed:@"rock.jpeg"];
    option.text = @"You chose Rock!!"; 
}

- (IBAction)paperButtonPressed:(id)sender {
     player1Image.image = [UIImage imageNamed:@"paper.jpeg"];
    option.text = @"You chose paper!!"; 
}

- (IBAction)scissorButtonPressed:(id)sender {
    
    player1Image.image = [UIImage imageNamed:@"scissors.jpg"];
    option.text = @"You chose scissors!!"; 
}

@end
