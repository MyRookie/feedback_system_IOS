//
//  AnimitionLogo.h
//  FeedBack
//
//  Created by rookie on 30/01/15.
//  Copyright (c) 2015 rookie. All rights reserved.
//

#ifndef FeedBack_AnimitionLogo_h
#define FeedBack_AnimitionLogo_h

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Animition : NSObject{
    NSArray *imageNames;
    NSMutableArray *images;
    UIImageView *animationImageView ;
}

-(id) init;

-(UIImageView*) getLogo;

@end

#endif
