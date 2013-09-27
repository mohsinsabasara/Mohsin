//
//  Spinner.m
//  Activity
//
//  Created by Mac mini 19 on 27/09/13.
//  Copyright (c) 2013 Mac mini 19. All rights reserved.
//

#import "Spinner.h"

@implementation Spinner

@synthesize activityView , loadingView , loadingLabel;

-(id)init
{

    indicatorView = [[UIView alloc] initWithFrame:CGRectMake(0,0,[[UIScreen mainScreen] bounds].size.width,[[UIScreen mainScreen] bounds].size.height)];
    indicatorView.backgroundColor = [UIColor clearColor];
    
    loadingView = [[UIView alloc] initWithFrame:CGRectMake(75, 155,140,140)];
    
    loadingView.backgroundColor = [UIColor darkGrayColor];
    loadingView.clipsToBounds = YES;
    loadingView.layer.cornerRadius = 10.0;
    
    activityView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
    activityView.frame = CGRectMake(50, 40, activityView.bounds.size.width, activityView.bounds.size.height);
    [loadingView addSubview:activityView];
    
    loadingLabel = [[UILabel alloc] initWithFrame:CGRectMake(11,95, 130, 22)];
    loadingLabel.backgroundColor = [UIColor clearColor];
    loadingLabel.textColor = [UIColor whiteColor];
    loadingLabel.adjustsFontSizeToFitWidth = YES;
    loadingLabel.textAlignment = NSTextAlignmentCenter;
    loadingLabel.text = @"Loading...";
    [loadingView addSubview:loadingLabel];

    [indicatorView addSubview:loadingView];
    
    [activityView startAnimating];

    return  self;
    
}

-(void)startActivityIndicator :(UIView *) viewController
{
    [viewController addSubview:indicatorView];
    [activityView startAnimating];
}

-(void)stopActivityIndicator
{
    [indicatorView removeFromSuperview];
    [activityView stopAnimating];
}



@end
