//
//  sliderDefine.h
//  FeedBack
//
//  Created by rookie on 20/01/15.
//  Copyright (c) 2015 rookie. All rights reserved.
//

#ifndef FeedBack_sliderDefine_h
#define FeedBack_sliderDefine_h

#import <UIKit/UIKit.h>

@interface  Slider : NSObject {
    UISlider* slider;
    Slider* next;
}

-(Slider*) getNext;
-(void) addSlider:(UISlider*) tmp;
-(float) rtnValue;

@end


#endif

