//
//  Quiz8ViewController.h
//  Quiz8
//
//  Created by Doug Goss on 4/13/14.
//  Copyright (c) 2014 Doug Goss. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ESView.h"

@interface Quiz8ViewController : UIViewController{
    CGFloat lastVelocity;
}

@property (weak, nonatomic) IBOutlet ESView *esView;
- (IBAction)addHorizontal:(id)sender;
- (IBAction)addVerticle:(id)sender;

@end
