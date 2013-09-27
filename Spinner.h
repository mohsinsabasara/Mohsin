//
//  Spinner.h
//  Activity
//
//  Created by Mac mini 19 on 27/09/13.
//  Copyright (c) 2013 Mac mini 19. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>
#import "ViewController.h"

@class ViewController;

@interface Spinner : NSObject <ActivityIndicator>
{
    UIActivityIndicatorView *activityView;
    UIView *loadingView;
    UILabel *loadingLabel;
    UIView *indicatorView;
}


@property (nonatomic, retain) UIActivityIndicatorView * activityView;
@property (nonatomic, retain) UIView *loadingView;
@property (nonatomic, retain) UILabel *loadingLabel;


@end
