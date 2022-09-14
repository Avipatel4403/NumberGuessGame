//
//  ViewController.h
//  NumberGuessAPP
//
//  Created by Avi K Patel on 4/9/19.
//  Copyright © 2019 Avi Patel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property int guess,numOfGuess,answers;

@property (weak, nonatomic) IBOutlet UITextField *EnterGuess;

- (IBAction)CheckGuessBTN:(id)sender;

- (IBAction)RestartBTN:(id)sender;

-(IBAction)backgroundTap:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *Message;

@property (weak, nonatomic) IBOutlet UILabel *LastGuess;

@property (weak, nonatomic) IBOutlet UILabel *NumberofGuess;

@end

