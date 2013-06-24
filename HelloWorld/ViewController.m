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


/*
- (IBAction)rockButtonPressed:(id)sender {
    player1Image.image = [UIImage imageNamed:@"rock.jpeg"];
    option.text = @"You chose Rock!!"; 
}
 */

- (IBAction)paperButtonPressed:(id)sender {
     player1Image.image = [UIImage imageNamed:@"paper.jpeg"];
    option.text = @"You chose paper!!"; 
}

- (IBAction)scissorButtonPressed:(id)sender {
    
    player1Image.image = [UIImage imageNamed:@"scissors.jpg"];
    option.text = @"You chose scissors!!"; 
}

- (void) gameOver:(int)winner{
    if (winner == 1) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Game Over" message:@"Player One Wins" delegate:self cancelButtonTitle:@"Okay" otherButtonTitles: nil];
        [alert show];

    }
    else if (winner == 2){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Game Over" message:@"Player One Wins" delegate:self cancelButtonTitle:@"Okay" otherButtonTitles: nil];
        [alert show];
        
    }
}
- (void) updateLabel: (UILabel *)label withText:(NSString *)text{
    label.text = text;
}

- (int) determineComputerAction{
    return arc4random()%4;
    
}

@end
