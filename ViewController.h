//
//  ViewController.h
//  Activity
//
//  Created by Mac mini 19 on 27/09/13.
//  Copyright (c) 2013 Mac mini 19. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@class Spinner;

@protocol ActivityIndicator <NSObject>

-(void)startActivityIndicator :(UIView *)viewController;
-(void)stopActivityIndicator;

@end

@interface ViewController : UIViewController
{
    Spinner *spinerObj;
    id<ActivityIndicator> delegate;
}
@property(nonatomic,assign) id<ActivityIndicator> delegate;


-(IBAction)start:(id)sender;
-(IBAction)stop:(id)sender;


@end
