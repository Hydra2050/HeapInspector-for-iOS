//
//  RMRootViewController.m
//  HeapInspectorExample
//
//  Created by Christian Menschel on 20.08.14.
//  Copyright (c) 2014 tapwork. All rights reserved.
//

#import "RMRootViewController.h"
#import "RMGaleryViewCotroller.h"

@interface RMRootViewController ()

@end

@implementation RMRootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    CGSize buttonSize = CGSizeMake(200, 50);
    UIButton *galerybutton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [galerybutton addTarget:self action:@selector(buttonLeakTapped:) forControlEvents:UIControlEventTouchUpInside];
    [galerybutton setTitle:@"Galery" forState:UIControlStateNormal];
    galerybutton.frame = CGRectMake(floorf((self.view.bounds.size.width - buttonSize.width)/2),
                                floorf((self.view.bounds.size.height - buttonSize.height)/2),
                                buttonSize.width,
                                buttonSize.height);
    
    galerybutton.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
    [self.view addSubview:galerybutton];
}

- (void)buttonLeakTapped:(id)sender
{
    RMGaleryViewCotroller *galeryVC = [[RMGaleryViewCotroller alloc] init];
    [self.navigationController pushViewController:galeryVC animated:YES];
}


@end
