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

@synthesize playerScore = _playerScore;
@synthesize playerScoreLabel = _playerScoreLabel;
@synthesize computerScoreLabel = _computerScoreLabel;
@synthesize tiesLabel = _tiesLabel;
@synthesize computerScore = _computerScore;
@synthesize ties = _ties;
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




- (IBAction)buttonPressed:(id)sender {
    UIButton *button = (UIButton *)sender;
  
    int playerChoice = 0;
    int computerChoice = 0;
    
    if ( [button.titleLabel.text isEqualToString:@"Rock"])
    {
        player1Image.image = [UIImage imageNamed:@"rock.jpeg"];
        playerChoice = 0;
    }
    else if ([button.titleLabel.text isEqual:@"Paper"]){
        player1Image.image = [UIImage imageNamed:@"paper.jpeg"];
        playerChoice = 1;
        
    }
    else if ([button.titleLabel.text isEqual:@"Scissors"]){
        player1Image.image = [UIImage imageNamed:@"Scissors.jpg"];
        playerChoice = 2;
        
        
    }
    computerChoice = [self determineComputerAction];
    if (computerChoice == 0){
        player2Image.image = [UIImage imageNamed:@"rock.jpeg"];
    }
    else if (computerChoice == 1) {
        player2Image.image = [UIImage imageNamed:@"paper.jpeg"];
    }
    else {
        player2Image.image = [UIImage imageNamed:@"Scissors.jpg"];
    }
    
    NSLog(@"%d",computerChoice);
    
    [self gameOver:[self determineWinner:playerChoice withComputer:computerChoice]];
}

- (void) gameOver:(int)winner{
    
    if (winner == 1) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Game Over" message:@"Player One Wins" delegate:self cancelButtonTitle:@"Okay" otherButtonTitles: nil];
        [alert show];
        self.playerScore += 1;

    }
    else if (winner == 2){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Game Over" message:@"Computer Wins" delegate:self cancelButtonTitle:@"Okay" otherButtonTitles: nil];
        [alert show];
        self.computerScore += 1;
        
    }
    else if (winner == 0){

            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Game Over" message:@"It's a tie!" delegate:self cancelButtonTitle:@"Okay" otherButtonTitles: nil];
            [alert show];
        self.ties += 1;
    }
        
    [self updateScore];
}

- (void) updateLabel: (UILabel *)label withText:(NSString *)text{
    label.text = text;
}

- (int) determineComputerAction{
    return arc4random()%3;
    
}

-(int) determineWinner:(int)player1 withComputer:(int)player2{
    if ( (player1 == 0 && player2 == 2) || (player1 == 1 && player2 == 0) || (player1== 2 && player2== 1) )
    {
        return 1; 
    }
    else if ( (player1 == 0 && player2 == 0) || (player1 == 1 && player1 ==  1) || (player1 ==2 && player2 == 2))  {
        return 0;
    
    }
    else {
        return 2;
        
    }
}
-(void)updateScore {

    self.playerScoreLabel.text = [[NSString alloc] initWithFormat:@"Player Score: %d", self.playerScore];
self.computerScoreLabel.text = [[NSString alloc] initWithFormat:@"Computer Score: %d", self.computerScore];
self.tiesLabel.text = [[NSString alloc] initWithFormat:@"Ties: %d", self.ties];

    

}
 
@end
