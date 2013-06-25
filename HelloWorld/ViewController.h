//
//  ViewController.h
//  HelloWorld
//
//  Created by iD Student on 6/24/13.
//  Copyright (c) 2013 James. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface ViewController : UIViewController
{
    IBOutlet UIImageView *player1Image;
    IBOutlet UIImageView *player2Image;
    UILabel *playerScoreLabel;
    IBOutlet UILabel *computerScore;
    IBOutlet UILabel *ties;
   
}
@property (nonatomic, strong) IBOutlet UILabel *playerScoreLabel;
@property (nonatomic, strong) IBOutlet UILabel *computerScoreLabel;
@property (nonatomic, strong) IBOutlet UILabel *tiesLabel;
@property (nonatomic) int playerScore;
@property (nonatomic) int computerScore;
@property (nonatomic) int ties; 

//- (IBAction)rockButtonPressed:(id)sender;

- (IBAction)buttonPressed:(id)sender;
- (void) gameOver:(int) winner;
- (void) updateLabel: (UILabel *)label withText:(NSString *)text;
- (int) determineComputerAction;
- (int) determineWinner:(int)player1 withComputer:(int)player2;
- (void) updateScore; 

@end
