//
//  ViewController.m
//  SliderDemo
//
//  Created by el1ven on 14-3-23.
//  Copyright (c) 2014年 el1ven. All rights reserved.
//

#import "ViewController.h"
#include "UICircularSlider.h"
@interface ViewController ()

@end

@implementation ViewController

@synthesize slider1;
@synthesize slider2;
@synthesize slider3;
//为进度条添加get,set方法

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //将slider3与slider1关联起来
    [self.slider3 setMinimumValue:self.slider1.minimumValue];
    [self.slider3 setMaximumValue:self.slider1.maximumValue];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)slider1_change:(UISlider*)sender {

    [self.slider1 setValue:sender.value];
    [self.slider2 setProgress:sender.value];
    [self.slider3 setValue:sender.value];
    self.slider_value.text =[NSString stringWithFormat:@"%.0f",self.slider1.value*100];
    
    
}

- (IBAction)slider3_change:(UISlider *)sender {
    int progress = translateValueFromSourceIntervalToDestinationInterval(sender.value, sender.minimumValue, sender.maximumValue,0,100);
    [self.slider1 setValue:sender.value];
    [self.slider2 setProgress:sender.value];
    [self.slider3 setValue:sender.value];
    self.slider_value.text =[NSString stringWithFormat:@"%d",progress];
}
@end
