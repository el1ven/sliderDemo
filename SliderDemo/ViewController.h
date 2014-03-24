//
//  ViewController.h
//  SliderDemo
//
//  Created by el1ven on 14-3-23.
//  Copyright (c) 2014年 el1ven. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UICircularSlider.h"

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *slider_value;

@property (strong, nonatomic) IBOutlet UISlider *slider1;
@property (strong, nonatomic) IBOutlet UIProgressView *slider2;

@property (strong, nonatomic) IBOutlet UICircularSlider *slider3;

- (IBAction)slider1_change:(id)sender;

- (IBAction)slider3_change:(id)sender;
@end
