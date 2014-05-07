//
//  SpirographView.m
//  Spirograph
//
//  Created by Doug Goss on 2/21/14.
//  Copyright (c) 2014 Michael Toth. All rights reserved.
//

#import "SpirographView.h"


@implementation SpirographView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    CGFloat x,y;
    CGFloat r = 120;
    CGFloat t = 0.0;
    UIBezierPath *bp = [[UIBezierPath alloc]init];
    
    for (t=0; t<numberOfSteps; t+= stepSize) {
        x = r*((1-k)*cos(t) + l*k*cos((1-k/k)*t));
        y = r*((1-k)*sin(t) - l*k*sin((1-k/k)*t));
        CGPoint p = CGPointMake(x, y);
        [bp addLineToPoint:p];
    }
    
    [bp stroke];
    
    
}


@end
