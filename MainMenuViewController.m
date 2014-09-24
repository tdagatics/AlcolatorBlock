//
//  MainMenuViewController.m
//  AlcolatorBlock
//
//  Created by Anthony Dagati on 9/3/14.
//  Copyright (c) 2014 Black Rail Capital. All rights reserved.
//

#import "MainMenuViewController.h"

@implementation MainMenuViewController

-(void)loadView { // creates the view that the controller manages
    // Allocate and initialize the all-encompassing view
    self.view = [[UIView alloc] init];
    self.view.backgroundColor = [UIColor lightGrayColor];
    self.wineButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.wineButton setTitle:@"Wine" forState:UIControlStateNormal];
    self.whiskeyButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.whiskeyButton setTitle:@"Whiskey" forState:UIControlStateNormal];
    
    [self.wineButton addTarget:self action:@selector(winePressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.whiskeyButton addTarget:self action:@selector(whiskeyPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.wineButton];
    [self.view addSubview:self.whiskeyButton];
    
    
}


- (void)viewDidLoad
{
    // Calls the superclass's implementation
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    // Set our primary view's background color to lightGrayColor
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    // Tells 'self.calculateButton' that when a finger is lifted from the button while still inside its bounds, to call '[self -buttonPressed:]'
    [self.wineButton addTarget:self action:@selector(winePressed:) forControlEvents:UIControlEventTouchUpInside];
    
    // Set the title of the button
    [self.wineButton setTitle:NSLocalizedString(@"Calculate!", @"Calculate command") forState:UIControlStateNormal];

    // Tells 'self.calculateButton' that when a finger is lifted from the button while still inside its bounds, to call '[self -buttonPressed:]'
    [self.whiskeyButton addTarget:self action:@selector(whiskeyPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    // Set the title of the button
    [self.whiskeyButton setTitle:NSLocalizedString(@"Calculate!", @"Calculate command") forState:UIControlStateNormal];

}


-(void) viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    
    self.view.frame = self.view.bounds; //Adjust for iPad
    
    CGFloat padding = 20;
    CGFloat itemWidth = 100;
    CGFloat itemHeight = 20;
  
    self.wineButton.frame = CGRectMake(padding, padding*4, itemWidth, itemHeight);
    self.whiskeyButton.frame = CGRectMake(padding, padding*4, itemWidth, itemHeight);
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)winePressed:(UIButton *) sender {
    ViewController *wineVC = [[ViewController alloc] init];
    [self.navigationController pushViewController:wineVC animated:YES];
}

-(void)whiskeyPressed:(UIButton *) sender {
    WhiskeyViewController *whiskeyVC = [[WhiskeyViewController alloc] init];
    [self.navigationController pushViewController:whiskeyVC animated:YES];
}

@end
