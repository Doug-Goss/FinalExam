//
//  test1BViewController.h
//  test1B
//
//  Created by Doug Goss on 2/26/14.
//  Copyright (c) 2014 Doug Goss. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlayingCardGame.h"

@interface test1BViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *b0;
@property (weak, nonatomic) IBOutlet UIButton *b1;
@property (weak, nonatomic) IBOutlet UIButton *b2;
@property (weak, nonatomic) IBOutlet UIButton *b3;
@property (weak, nonatomic) IBOutlet UIButton *b4;
@property (weak, nonatomic) IBOutlet UIButton *b5;
@property (weak, nonatomic) IBOutlet UIButton *b6;
@property (weak, nonatomic) IBOutlet UIButton *b7;
@property (weak, nonatomic) IBOutlet UIButton *b8;
@property (weak, nonatomic) IBOutlet UIButton *b9;
@property (weak, nonatomic) IBOutlet UIButton *b10;
@property (weak, nonatomic) IBOutlet UIButton *b11;
@property (weak, nonatomic) IBOutlet UIButton *b12;
@property (weak, nonatomic) IBOutlet UIButton *b13;
@property (weak, nonatomic) IBOutlet UIButton *b14;
@property (weak, nonatomic) IBOutlet UIButton *b15;
@property (weak, nonatomic) IBOutlet UILabel *score;
@property (nonatomic) PlayingCardGame *currentGame;

- (IBAction)selectCard:(UIButton *)sender;



@end
