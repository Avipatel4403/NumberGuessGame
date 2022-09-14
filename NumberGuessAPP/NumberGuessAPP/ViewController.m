//
//  ViewController.m
//  NumberGuessAPP
//
//  Created by Avi K Patel on 4/9/19.
//  Copyright © 2019 Avi Patel. All rights reserved.
//

#import "ViewController.h"
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
@interface ViewController ()

@end

@implementation ViewController

@synthesize guess,numOfGuess,answers;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    srand(time(NULL));
    answers = (rand() % 100) + 1;
    numOfGuess = 0;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (IBAction)CheckGuessBTN:(id)sender
{
    guess = [_EnterGuess.text intValue];
    numOfGuess++;
    if(guess < answers)
    {
        _Message.text = [NSString stringWithFormat:@"Higher"];
        _EnterGuess.text = @"";
        _LastGuess.text = [NSString stringWithFormat:@"Last Guess: %i", guess];
    }
    if(guess > answers){
        _Message.text = [NSString stringWithFormat:@"Lower"];
        _EnterGuess.text = @"";
        _LastGuess.text = [NSString stringWithFormat:@"Last Guess: %i", guess];

    }
    if(guess == answers)
    {
        _Message.text = [NSString stringWithFormat:@"Congrats! You guessed the right number"];
        _NumberofGuess.text = [NSString stringWithFormat:@"You guessed the number %i times", numOfGuess];
        numOfGuess = 0;
    }
   }

- (IBAction)RestartBTN:(id)sender
{
    _EnterGuess.text = @"";
    _LastGuess.text = @"";
    _Message.text = @"";
    _NumberofGuess.text = @"";
    numOfGuess = 0;
    answers = (rand() % 100) + 1;

}

-(IBAction)backgroundTap:(id)sender
{
    [_EnterGuess resignFirstResponder];
}
@end
