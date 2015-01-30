//
//  ViewController.m
//  FeedBack
//
//  Created by rookie on 20/01/15.
//  Copyright (c) 2015 rookie. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void) setBg:(NSString*) st {
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:st]];
    
//    UIImageView* cover = [[UIImageView alloc] initWithFrame:self.view.bounds];
    UIImage* cover = [UIImage imageNamed:@"Cover_Bg.png"];
    self.view.layer.contents = (id) cover.CGImage;
    
}

- (void)viewDidLoad {

    NSString *imagePath = [[NSBundle mainBundle] pathForResource:@"gym" ofType:@"png"];
    [self setBg:imagePath];
    
    self->logo = [[Animition alloc] init];
    [self.view addSubview:[self->logo getLogo]];
    
    
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
//test commit