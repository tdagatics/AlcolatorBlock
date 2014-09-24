//
//  MainMenuViewController.m
//  AlcolatorBlock
//
//  Created by Anthony Dagati on 9/3/14.
//  Copyright (c) 2014 Black Rail Capital. All rights reserved.
//

#import "BLCMainMenuViewController.h"
#import "BLCViewController.h"
#import "BLCWhiskeyViewController.h"


@implementation BLCMainMenuViewController

-(void)loadView { // creates the view that the controller manages
    // Allocate and initialize the all-encompassing view
    self.view = [[UIView alloc] init];
    self.wineButton = [UIButton buttonWithType:UIButtonTypeSystem];
    self.whiskeyButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.wineButton setTitle:@"Wine" forState:UIControlStateNormal];
    [self.whiskeyButton setTitle:@"Whiskey" forState:UIControlStateNormal];
    
    self.wineButton.frame = CGRectMake(0,0,40,40);
    self.whiskeyButton.frame = CGRectMake(0, 40, 40, 40);
    [self.view addSubview:self.wineButton];
    [self.view addSubview:self.whiskeyButton];
    NSLog(@"Main Menu View Controller Loaded.");
    
}

-(void)winePressed:(UIButton *) sender {
    ViewController *wineVC = [[ViewController alloc] init];
    [self.navigationController pushViewController:wineVC animated:YES];
}


-(void)whiskeyPressed:(UIButton *) sender {
    WhiskeyViewController *wineVC = [[WhiskeyViewController alloc] init];
    [self.navigationController pushViewController:wineVC animated:YES];
}

-(void)viewDidLoad
{
}

@end
