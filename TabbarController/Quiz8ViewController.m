//
//  Quiz8ViewController.m
//  Quiz8
//
//  Created by Doug Goss on 4/13/14.
//  Copyright (c) 2014 Doug Goss. All rights reserved.
//

#import "Quiz8ViewController.h"
#import "ESView.h"

@interface Quiz8ViewController ()

@end

@implementation Quiz8ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //ESView *esView = [[ESView alloc]init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addHorizontal:(id)sender {
    UIRotationGestureRecognizer *s = sender;
    NSLog(@"%f radians horizontal", s.rotation);
    if (lastVelocity < 0 && s.velocity < 0) {
        [self.esView saveCurrentPoint];
    }
    [self.esView redraw];
    [self.esView setCurrentHorizontalAngle:s.rotation];
    [self.esView setCurrentvelocity:s.velocity];
    if (s.state == UIGestureRecognizerStateEnded) {
        [self.esView saveCurrentPoint];
    }
    lastVelocity = s.velocity;
    
}

- (IBAction)addVerticle:(id)sender {
    UIRotationGestureRecognizer *s = sender;
    NSLog(@"%f radians horizontal", s.rotation);
    if (lastVelocity > 0 && s.velocity < 0) {
        [self.esView saveCurrentPoint];
    }
    if (lastVelocity < 0 && s.velocity > 0) {
        [self.esView saveCurrentPoint];
    }
    self.esView.currentVerticalAngle = s.rotation;
    self.esView.currentvelocity = s.velocity;
    [self.esView redraw];
    if (s.state == UIGestureRecognizerStateEnded) {
        [self.esView saveCurrentPoint];
    }
    lastVelocity = s.velocity;

   }
@end
