//
//  AnimitionLogo.m
//  FeedBack
//
//  Created by rookie on 30/01/15.
//  Copyright (c) 2015 rookie. All rights reserved.
//

#import "AnimitionLogo.h"

@implementation Animition:NSObject


-(id) init{
    if(self = [super init]){

        self->imageNames = @[@"logo01.png", @"logo02.png", @"logo03.png", @"logo04.png",
                            @"logo05.png", @"logo06.png", @"logo07.png", @"logo08.png",
                            @"logo09.png", @"logo10.png", @"logo11.png", @"logo12.png",
                            @"logo13.png", @"logo14.png", @"logo15.png", @"logo16.png",
                            @"logo17.png", @"logo18.png", @"logo19.png", @"logo20.png",
                            @"logo21.png", @"logo22.png", @"logo23.png", @"logo24.png",
                            @"logo25.png", @"logo26.png", @"logo27.png", @"logo28.png",
                            @"logo29.png", @"logo30.png", @"logo31.png"];
    
//        self->imageNames = @[@"b1.png",@"b2.png",@"b3.png",@"b4.png"];
        
        self->images = [[NSMutableArray alloc] init];
        for (int i = 0; i < imageNames.count; i++) {
//           UIImage* img = [UIImage imageNamed:[imageNames objectAtIndex:i]];
            [images addObject:[UIImage imageNamed:[imageNames objectAtIndex:i]]];
        }
    
    // Normal Animation
        animationImageView = [[UIImageView alloc] initWithFrame:CGRectMake(50, 300,700, 145)];
        animationImageView.animationImages = images;
        animationImageView.animationDuration = 2;
//        [self->view addSubview:animationImageView];
        [animationImageView startAnimating];
    }
    return self;
}

-(UIImageView*) getLogo{
    return self->animationImageView;
}

@end