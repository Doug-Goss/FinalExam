//
//  SpirographViewController.m
//  Spirograph
//
//  Created by Michael Toth on 2/20/14.
//  Copyright (c) 2014 Michael Toth. All rights reserved.
//

#import "SpirographViewController.h"

@interface SpirographViewController ()

@end

@implementation SpirographViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.scrollView.pagingEnabled = YES;
    [self.scrollView setScrollEnabled:YES];
    
}

- (void)viewDidLayoutSubviews{
    self.scrollView.contentSize=CGSizeMake(560,280);

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
