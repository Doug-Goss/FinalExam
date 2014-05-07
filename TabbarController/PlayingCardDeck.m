//
//  PlayingCardDeck.m
//  homework3
//
//  Created by Doug Goss on 2/16/14.
//  Copyright (c) 2014 Doug Goss. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "playingCard.h"


@implementation PlayingCardDeck



- (id)init {
    self = [super init];
    if (self) {
        for (NSString * suit in [playingCard validSuits])
        {
            for (NSUInteger i = 1; i<[playingCard maxRank];i++){
                NSLog(@" %u " , i);
                playingCard *card = [[playingCard alloc] init];
                card.rank = i;
                card.suit = suit;
                [self addCard:card];
                

            }
        }
    }
    return self;
}
@end
