//
//  PlayingCardGame.m
//  test1B
//
//  Created by Doug Goss on 2/26/14.
//  Copyright (c) 2014 Doug Goss. All rights reserved.
//

#import "PlayingCardGame.h"
#import "Deck.h"
#import "card.h"
#import "PlayingCardDeck.h"
#import "test1BViewController.h"


@implementation PlayingCardGame


playingCard *gamecard;
playingCard *prevcard;
playingCard *prevcard2;


-(id)initWithCardCount:(NSUInteger)count usingDeck:(Deck *)deck

{
    self.cards = [[NSMutableArray alloc] init];
    
    for (int i= 0; i < count; i++) {
        card *newcard = [[playingCard alloc] init];
        newcard = [deck drawRandomCard];
        if (newcard == nil){
            NSLog(@"card does not exsist");
        }
        [_cards addObject:newcard];
    }
    
    return self;
}



- (void) ChooseCardAtIndex:(NSInteger)index
{
    gamecard = [_cards objectAtIndex:index];
   
    
    if (prevcard == gamecard) {
       
        prevcard = nil;
        [gamecard isfliped];
        
    }
    else if(prevcard2 == gamecard){
        
        prevcard2 = nil;
        [gamecard isfliped];
    }
    else if (prevcard == nil)
    {
        [gamecard isfliped];
        prevcard = gamecard;
        _score -=1;
    }
    else if (prevcard2 == nil){
        
        [gamecard isfliped];
        prevcard2 = gamecard;
        _score -= 1;
    }
    
    if (prevcard != nil && prevcard2 != nil) {
        int prev2rank = prevcard2.rank;
        int prerank = prevcard.rank;
        int i = [prevcard matchedRank:prerank withrank:prev2rank];
        if (i == 1){
            _score = _score + 16;
            gamecard = nil;
            prevcard = nil;
            prevcard2 = nil;

        }
        else{
            NSString *prev2suit = prevcard2.suit;
            NSString *prevsuit = prevcard.suit;
            int i = [prevcard matchSuits:prevsuit withSuit:prev2suit];
            if (i == 1){
                _score = _score + 4;
                gamecard = nil;
                prevcard = nil;
                prevcard2 = nil;
            }
            else{
                return;
            }
        }
    }

    
   
    
}

- (card *)returnCard:(NSInteger)index
{
    return [self.cards objectAtIndex:index];
}




@end
