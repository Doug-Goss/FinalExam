//
//  card.h
//  homework3
//
//  Created by Doug Goss on 2/16/14.
//  Copyright (c) 2014 Doug Goss. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface card : NSObject
{
}
@property (strong, nonatomic)NSString *contents;
@property (nonatomic) BOOL chosen;
@property (nonatomic) BOOL matched;



- (int)matched:(card *)a;
- (int)matchedRank:(int)rank withrank:(int)r;
- (int)matchSuits:(NSString *)suit withSuit:(NSString *)s;
- (void)isfliped;

@end
