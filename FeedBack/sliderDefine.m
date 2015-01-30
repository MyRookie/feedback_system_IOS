//
//  sliderDefine.m
//  FeedBack
//
//  Created by rookie on 20/01/15.
//  Copyright (c) 2015 rookie. All rights reserved.
//
#import "sliderDefine.h"

@implementation Slider: NSObject

-(Slider*) getNext{
    return self->next;
}

-(void) addSlider:(UISlider *)tmp{
//    NSLog(@"%f",tmp.value);
    self->slider = tmp;
    self->next = [[Slider alloc] init];
}

-(float) rtnValue{
    return (float)self->slider.value;
}

@end
