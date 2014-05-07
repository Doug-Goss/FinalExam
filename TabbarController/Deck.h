//
//  Deck.h
//  homework3
//
//  Created by Doug Goss on 2/16/14.
//  Copyright (c) 2014 Doug Goss. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "card.h"

@interface Deck : NSObject
{
}

- (void)addCard:(card *)c atTop:(BOOL )y;
- (void)addCard:(card *)c;

- (card *)drawRandomCard;

@end
