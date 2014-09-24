//
//  MainMenuViewController.m
//  AlcolatorBlock
//
//  Created by Anthony Dagati on 9/3/14.
//  Copyright (c) 2014 Black Rail Capital. All rights reserved. Revised.
//

#import "BLCMainMenuViewController.h"
#import "BLCViewController.h"
#import "BLCWhiskeyViewController.h"


@implementation BLCMainMenuViewController

-(void)loadView { // creates the view that the controller manages
    // Allocate and initialize the all-encompassing view
    self.view = [[UIView alloc] init];
    self.view.backgroundColor = [UIColor lightGrayColor];
    self.title = @"Main Menu";
    self.wineButton = [UIButton buttonWithType:UIButtonTypeSystem];
    self.whiskeyButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.wineButton setTitle:@"Wine" forState:UIControlStateNormal];
    [self.whiskeyButton setTitle:@"Whiskey" forState:UIControlStateNormal];
    
    CGFloat xpadding = 40;
    CGFloat statusBarHeight = 20;
    CGFloat navigationBarHeight = 44;
    CGFloat ypadding = statusBarHeight + navigationBarHeight + 20;
    self.wineButton.frame = CGRectMake(xpadding,ypadding,100,40);
    [self.wineButton addTarget:self action:@selector(winePressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.whiskeyButton addTarget:self action:@selector(whiskeyPressed:) forControlEvents:UIControlEventTouchUpInside];
    self.whiskeyButton.frame = CGRectMake(xpadding*4, ypadding, 100, 40);
    [self.view addSubview:self.wineButton];
    [self.view addSubview:self.whiskeyButton];
    NSLog(@"Main Menu View Controller Loaded.");
    
}

-(void)winePressed:(UIButton *) sender {
    BLCViewController *wineVC = [[BLCViewController alloc] init];
    NSLog(@"Wine button pressed.");
    [self.navigationController pushViewController:wineVC animated:YES];
}


-(void)whiskeyPressed:(UIButton *) sender {
    BLCWhiskeyViewController *wineVC = [[BLCWhiskeyViewController alloc] init];
    NSLog(@"Whiskey button pressed.");
    [self.navigationController pushViewController:wineVC animated:YES];
}

-(void)viewDidLoad
{
    
}

@end
