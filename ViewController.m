//
//  ViewController.m
//  Activity
//
//  Created by Mac mini 19 on 27/09/13.
//  Copyright (c) 2013 Mac mini 19. All rights reserved.
//

#import "ViewController.h"
#import "Spinner.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize delegate;



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    spinerObj = [[Spinner alloc] init];
    
    if ([spinerObj respondsToSelector:@selector(startActivityIndicator:)]) {
        [spinerObj startActivityIndicator:self.view];
    }
	// Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)start:(id)sender
{
    if ([spinerObj respondsToSelector:@selector(startActivityIndicator:)]) {
        [spinerObj startActivityIndicator:self.view];
    }
}
-(IBAction)stop:(id)sender
{
    if ([spinerObj respondsToSelector:@selector(stopActivityIndicator)]) {
        [spinerObj stopActivityIndicator];
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
