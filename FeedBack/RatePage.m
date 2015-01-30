//
//  RatePage.m
//  FeedBack
//
//  Created by rookie on 20/01/15.
//  Copyright (c) 2015 rookie. All rights reserved.
//

#import "RatePage.h"




@interface RatePage ()

@end

@implementation RatePage


- (void) pressSubmit:(id)sender{
    Slider* ptr = self->slider_ptr;
    //self->slider_ptr
    
    for(int i=0;i!=5;++i){
        NSLog(@"%f\n",[ptr rtnValue]);
        ptr = [ptr getNext];
    }
    //NSLog(@"%f\n",[self->slider_ptr rtnValue]);
}

- (void) getAmount:(int) val{
    self->amount = val;
}

- (void) initSlider{
    
    self->slider_ptr = [[Slider alloc] init];
    Slider* p = slider_ptr;
    
    for(int i=0; i!= self->amount; ++i){
        
        
        
        [p addSlider: [self createSlider:i*100]];
        //NSLog(@"%f",[p rtnValue]);

        p = [p getNext];
    }
}

- (UISlider*) createSlider: (int)val{
    CGSize newSize;
    
    UIImage *stetchLeftTrack= [UIImage imageNamed:@"lineb.png"];
    newSize = [stetchLeftTrack size];
    [stetchLeftTrack drawInRect:CGRectMake(0,0,newSize.width,newSize.height) blendMode:kCGBlendModeClear alpha:0];
    
    UIImage *stetchRightTrack = [UIImage imageNamed:@"line0.png"];
    newSize = [stetchRightTrack size];
    [stetchRightTrack drawInRect:CGRectMake(0,0,newSize.width,newSize.height) blendMode:kCGBlendModeClear alpha:0];
    
    UIImage *thumbImage = [UIImage imageNamed:@"b3.png"];
    newSize = [thumbImage size];
    [thumbImage drawInRect:CGRectMake(0,0,newSize.width,newSize.height) blendMode:kCGBlendModeClear alpha:0.5];
    
    UISlider *sliderA=[[UISlider alloc]initWithFrame:CGRectMake(100, 320+val, 388, 12)];
    sliderA.backgroundColor = [UIColor clearColor];
    sliderA.value= 0.25;
    sliderA.minimumValue=0;
    sliderA.maximumValue=1;
    
    [sliderA setMinimumTrackImage:stetchLeftTrack forState:UIControlStateNormal];
    [sliderA setMaximumTrackImage:stetchRightTrack forState:UIControlStateNormal];
    
    [sliderA setThumbImage:thumbImage forState:UIControlStateHighlighted];
    [sliderA setThumbImage:thumbImage forState:UIControlStateNormal];
    
    [sliderA addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    
    //    [sliderA addTarget:self action:@selector(sliderDragUp:) forControlEvents:UIControlEventTouchUpInside];

    [self.view addSubview:sliderA];
    
    return sliderA;
}

- (void)sliderValueChanged:(UISlider*) curSlider{
    //NSLog(@"%f",curSlider.value);
    int val = curSlider.value *100;
    switch (val / 25){
        case 0:{
            UIImage *thumbImage = [UIImage imageNamed:@"b4.png"];
            [curSlider setThumbImage:thumbImage forState:UIControlStateHighlighted];
            [curSlider setThumbImage:thumbImage forState:UIControlStateNormal];
            return;
        }
        case 1:{
            UIImage *thumbImage = [UIImage imageNamed:@"b3.png"];
            [curSlider setThumbImage:thumbImage forState:UIControlStateHighlighted];
            [curSlider setThumbImage:thumbImage forState:UIControlStateNormal];
            return;
        }
        case 2:{
            UIImage *thumbImage = [UIImage imageNamed:@"b2.png"];
            [curSlider setThumbImage:thumbImage forState:UIControlStateHighlighted];
            [curSlider setThumbImage:thumbImage forState:UIControlStateNormal];
            return;
        }
        case 3:{
            UIImage *thumbImage = [UIImage imageNamed:@"b1.png"];
            [curSlider setThumbImage:thumbImage forState:UIControlStateHighlighted];
            [curSlider setThumbImage:thumbImage forState:UIControlStateNormal];
            return;
        }
        default:return;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self getAmount:5];
    [self initSlider];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
