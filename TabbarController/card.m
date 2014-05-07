//
//  card.m
//  homework3
//
//  Created by Doug Goss on 2/16/14.
//  Copyright (c) 2014 Doug Goss. All rights reserved.
//

#import "card.h"

@implementation card

-(int)matched:(card *)a {
    if ([a.contents isEqualToString:self.contents]) {
        return 1;
    } else {
        return 0;
    }
}

-(void)isfliped
{
    _chosen = _chosen ? NO : YES;
}

-(int)matchedRank:(int)rank withrank:(int)r{
    if (rank == r){
        return  1;
    }
    else{
        return  0;
    }
}

-(int) matchSuits:(NSString *)suit withSuit:(NSString *)s
{
    if([suit isEqualToString:s]) {
        return 1;
    }
    else{
        return 0;
    }
}

@end