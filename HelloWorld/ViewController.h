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
    IBOutlet UILabel *option;
   
}

//- (IBAction)rockButtonPressed:(id)sender;
- (IBAction)paperButtonPressed:(id)sender;
- (IBAction)scissorButtonPressed:(id)sender;
- (void) gameOver:(int) winner;
- (void) updateLabel: (UILabel *)label withText:(NSString *)text;
- (int) determineComputerAction;



@end
