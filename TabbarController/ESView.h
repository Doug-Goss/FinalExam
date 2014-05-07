//
//  ESView.h
//  Quiz8
//
//  Created by Doug Goss on 4/13/14.
//  Copyright (c) 2014 Doug Goss. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ESView : UIView{
}

@property (nonatomic, strong)NSMutableArray *points;

@property (nonatomic) CGPoint currentPoint;
@property (nonatomic) CGFloat currentHorizontalAngle;
@property (nonatomic) CGFloat currentVerticalAngle;
@property (nonatomic) CGFloat currentvelocity;
-(void)saveCurrentPoint;
-(void)drawCurrentPoint;
-(void)redraw;

@end
