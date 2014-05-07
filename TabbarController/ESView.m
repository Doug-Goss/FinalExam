//
//  ESView.m
//  Quiz8
//
//  Created by Doug Goss on 4/13/14.
//  Copyright (c) 2014 Doug Goss. All rights reserved.
//

#import "ESView.h"



@implementation ESView
@synthesize points, currentPoint, currentHorizontalAngle, currentVerticalAngle, currentvelocity;


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        points = [[NSMutableArray alloc]init];
        NSValue *Point = [NSValue valueWithCGPoint:CGPointMake(0, 0)];
        [points addObject:Point];
    }
    return self;
}

-(void)saveCurrentPoint{
    NSValue *newPoint = [NSValue valueWithCGPoint:currentPoint];
    [points addObject:newPoint];
    currentVerticalAngle = 0;
    currentHorizontalAngle = 0;
    currentvelocity = 0;
    
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
   
    UIBezierPath *bz = [[UIBezierPath alloc] init];
    [bz setLineWidth:4.0];
    [[UIColor blackColor] setStroke];
    [bz moveToPoint:[[points firstObject] CGPointValue]];
    for (id point in points) {
        [bz addLineToPoint:[point CGPointValue]];
    }
    CGPoint lastPoint = [[points lastObject] CGPointValue];
    currentPoint = CGPointMake(lastPoint.x + self.currentHorizontalAngle*1.0,
                               lastPoint.y + self.currentVerticalAngle*1.0);
    if (currentPoint.x < 0) {
        currentPoint.x = 0;
    }
    if (currentPoint.y < 0) {
        currentPoint.y = 0;
    }
    if (currentPoint.x > self.bounds.size.width) {
        currentPoint.x = self.bounds.size.width;
    }
    if (currentPoint.y > self.bounds.size.height) {
        currentPoint.y = self.bounds.size.height;
    }
    
    [bz addLineToPoint:currentPoint];
    [self saveCurrentPoint];
    [bz stroke];
    
    [self drawCurrentPoint];

}

-(void)drawCurrentPoint{
    [[UIColor whiteColor] setStroke];
    UIBezierPath *path = [[UIBezierPath alloc] init];
    [path moveToPoint:currentPoint];
    [path setLineWidth:4];
    CGPoint p = CGPointMake(currentPoint.x - 2, currentPoint.y - 2);
    [path addLineToPoint:p];
    p.x += 4.0;
    [path addLineToPoint:p];
    p.y += 4.0;
    [path addLineToPoint:p];
    p.x -= 4.0;
    [path addLineToPoint:p];
    p.y -= 4.0;
    [path addLineToPoint:p];
    [path stroke];
    
    
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    if (event.subtype == UIEventSubtypeMotionShake) {
        [points removeAllObjects];
        [points addObject:[NSValue valueWithCGPoint:currentPoint]];
        [self setNeedsDisplay];
    }
    if ( [super respondsToSelector:@selector(motionEnded:withEvent:)])
        [super motionEnded:motion withEvent:event];
}

-(void)redraw{
    [self setNeedsDisplay];

}


-(BOOL) canBecomeFirstResponder {
    return YES;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        points = [[NSMutableArray alloc] init];
        [points addObject:[NSValue valueWithCGPoint:CGPointMake(180, 100)]];
    }
    [[UIDevice currentDevice] beginGeneratingDeviceOrientationNotifications];
    
    [self becomeFirstResponder];
    return self;
}



@end
