//
//  SpirographViewController.h
//  Spirograph
//
//  Created by Michael Toth on 2/20/14.
//  Copyright (c) 2014 Michael Toth. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SpirographView.h"
#import "HarmonigraphView.h"

@interface SpirographViewController : UIViewController{
    

}
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet HarmonigraphView *harmonigraphView;
@property (weak, nonatomic) IBOutlet SpirographView *spirographView;

@end
