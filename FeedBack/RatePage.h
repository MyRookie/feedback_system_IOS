//
//  RatePage.h
//  FeedBack
//
//  Created by rookie on 20/01/15.
//  Copyright (c) 2015 rookie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "sliderDefine.h"



@interface RatePage : UIViewController{
    Slider* slider_ptr;
    int amount;
    
    IBOutlet UILabel* testShow;
//    IBOutlet UIButton* submit;
}

- (void) getAmount:(int) n;
- (void) initSlider;
- (UISlider*) createSlider:(int) val;
- (IBAction)pressSubmit:(id)sender;

@end
