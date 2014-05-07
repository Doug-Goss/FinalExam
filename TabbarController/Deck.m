//
//  Deck.m
//  homework3
//
//  Created by Doug Goss on 2/16/14.
//  Copyright (c) 2014 Doug Goss. All rights reserved.
//

#import "Deck.h"
/*@interface Deck()
    @property (strong, nonatomic) NSMutableArray *cards;
@end

@implementation Deck

- (NSMutableArray *) cards{
    if (!_cards){
        _cards = [[NSMutableArray alloc] init];
    }
    return _cards;
}

-(void)addCard:(card *)c atTop:(BOOL)y
{
    
    if (c != nil){
        NSLog(@"the card is here");
    }
    if (y) {
        
        NSLog(@"card inserted");
        [_cards insertObject:c atIndex:0];
    }
    else if (!y) {
        
        NSLog(@"card inserted");
        [_cards addObject:c];
    }
    else {
        return;
    }
}

-(void)addCard:(card *)c
{
    //[_cards addObject:c];
    if (c == nil) {
        NSLog(@"the deck does not exsist");
    }
    [self addCard:c atTop:NO];
}

- (card *)drawRandomCard {
    card *randomCard = nil;
    if ([self.cards count]) {
        unsigned index = arc4random() % [self.cards count];
        randomCard = [self.cards objectAtIndex:index];
        [self.cards removeObject:randomCard];
        if (randomCard == nil) {
            NSLog(@"card does not exsist2");
        }
    }
    return randomCard;
}

- (card *)getBottomCard{
    return [_cards objectAtIndex:0];
}*/

@interface Deck ()
@property (strong, nonatomic) NSMutableArray *cards;

@end

@implementation Deck

-(NSMutableArray *)cards {
    if (!_cards) {
        _cards = [[NSMutableArray alloc] init];
    }
    return _cards;
}

-(void)addCard:(card *)card atTop:(BOOL)atTop {
    if (atTop) {
        [self.cards insertObject:card atIndex:0];
    } else {
        [self.cards addObject:card];
    }
}

- (void) addCard:(card *)card {
    [self addCard:card atTop:NO];
}

- (card *)drawRandomCard {
    card *randomCard = nil;
    if ([self.cards count]) {
        unsigned index = arc4random() % [self.cards count];
        randomCard = [self.cards objectAtIndex:index];
        [self.cards removeObject:randomCard];
    }
    return randomCard;
}


@end
