//
//  test1BViewController.m
//  test1B
//
//  Created by Doug Goss on 2/26/14.
//  Copyright (c) 2014 Doug Goss. All rights reserved.
//

#import "test1BViewController.h"
#import "PlayingCardGame.h"
#import "playingCard.h"
#import "PlayingCardDeck.h"
#import "deck.h"
#import "card.h"

@interface test1BViewController ()
{

    card *previouscard;
    card *previoucard2;
    UIButton *prevbut;
    UIButton *prevbut2;
    int oldscore;
}

@end

@implementation test1BViewController

int cardcount = 0;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    Deck *newDeck = [[PlayingCardDeck alloc] init];

    _currentGame = [[PlayingCardGame alloc] initWithCardCount:16 usingDeck: newDeck];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)selectCard:(UIButton *)sender
{
    
    card *currentcard = [[playingCard alloc] init];
    
    oldscore = _currentGame.score;
    
    currentcard = [_currentGame returnCard:[sender tag]];
    
    if (cardcount == 2 && previoucard2 != currentcard && previouscard != currentcard) {
        return;
    }
    
    else{
        if (!currentcard.chosen) {
            [sender setBackgroundImage:nil forState:UIControlStateNormal];
            [sender setBackgroundColor:[UIColor whiteColor]];
            [sender setTitle:(currentcard.contents) forState:UIControlStateNormal];
            [sender setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
            NSString *score = [NSString stringWithFormat:@"%d", self.currentGame.score];
            NSString *newlabel = [NSString stringWithFormat:@"%d", [score intValue]];
            [_score setText:newlabel];
 
            
          
            
            if ([currentcard matched:previouscard] == 1) {
                return;
            }
            else if (!currentcard.chosen){
                if (previouscard == nil) {
                    previouscard = currentcard;
                    [self.currentGame ChooseCardAtIndex:[sender tag]];
                    NSString *score = [NSString stringWithFormat:@"%d", self.currentGame.score];
                    NSString *newlabel = [NSString stringWithFormat:@"%d", [score intValue]];
                    [_score setText:newlabel];
                    if(_currentGame.score>oldscore){
                        currentcard = nil;
                        previouscard = nil;
                        previoucard2 = nil;
                        sender.enabled = NO;
                        prevbut.enabled = NO;
                        prevbut2.enabled =NO;
                        cardcount = 0;
                        return;
                    }
                    else{
                    cardcount += 1;
                    prevbut = sender;
                    }
                }
                else{
                    previoucard2 = currentcard;
                    [self.currentGame ChooseCardAtIndex:[sender tag]];
                    NSString *score = [NSString stringWithFormat:@"%d", self.currentGame.score];
                    NSString *newlabel = [NSString stringWithFormat:@"%d", [score intValue]];
                    [_score setText:newlabel];
                    if(_currentGame.score>oldscore){
                        currentcard = nil;
                        previouscard = nil;
                        previoucard2 = nil;
                        sender.enabled = NO;
                        prevbut.enabled = NO;
                        prevbut2.enabled =NO;
                        cardcount = 0;
                        return;
                    }
                    else{
                    cardcount += 1;
                    prevbut2 = sender;
                    }
                }
            }
        
        }

        else{
            [sender setBackgroundImage:[UIImage imageNamed:@"muhback.png"] forState:UIControlStateNormal];
            [sender setTitle:nil forState:UIControlStateNormal];
         
            if (previouscard == currentcard) {
                [self.currentGame ChooseCardAtIndex:[sender tag]];
                previouscard = nil;
                prevbut = nil;
                cardcount -= 1;
            }
            else{
                [self.currentGame ChooseCardAtIndex:[sender tag]];
                previoucard2 = nil;
                prevbut2 = nil;
                cardcount -= 1;
            }
        
        }
    }
    
}
@end
