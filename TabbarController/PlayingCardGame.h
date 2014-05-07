//
//  PlayingCardGame.h
//  test1B
//
//  Created by Doug Goss on 2/26/14.
//  Copyright (c) 2014 Doug Goss. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "card.h"
#import "Deck.h"
#import "PlayingCard.h"
#import "PlayingCardDeck.h"

@interface PlayingCardGame : NSObject{

@protected NSInteger score;

  
   
}


@property (nonatomic) NSMutableArray *cards;
@property (readonly) NSInteger score;





- (id)initWithCardCount:(NSUInteger)count usingDeck:(Deck *)deck;
- (void)ChooseCardAtIndex:(NSInteger)index;
- (card *)returnCard:(NSInteger)index;



@end
