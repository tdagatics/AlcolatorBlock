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
    
    
    
    //Allocate and initialiaze each of our views and the gesture recognizer
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem]; // Creating a strong reference to this object
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeSystem];
    
    [self.view addSubview:button];
    [self.view addSubview:button2];
    
    self.wineButton = button2; // Setting to a weak reference
    // Could use self.wineButton = [UIButton buttonWithType:UIButtonTypeSystem];
    self.whiskeyButton = button;

}

// Copied code from Stack Overflow. Discuss in greater detail with Bjorn. Is this re-sizing the controls properly?


// End rotation code

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
    [self.wineButton setTitle:NSLocalizedString(@"Wine!", @"Calculate command") forState:UIControlStateNormal];

    // Tells 'self.calculateButton' that when a finger is lifted from the button while still inside its bounds, to call '[self -buttonPressed:]'
    [self.whiskeyButton addTarget:self action:@selector(whiskeyPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    // Set the title of the button
    [self.whiskeyButton setTitle:NSLocalizedString(@"Whiskey!", @"Calculate command") forState:UIControlStateNormal];

}

-(void) viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    
    //self.view.frame = self.view.bounds; //Adjust for iPad
    
    NSString *deviceName = ([UIDevice currentDevice].name);
    
    if ([deviceName  isEqual: @"iPhone Simulator"]) {
    if (UIDeviceOrientationIsPortrait([UIDevice currentDevice].orientation)) {
    NSLog(@"Portrait!");
    CGFloat viewWidth = 320;
    CGFloat padding = 20;
    CGFloat ypadding = 50;
    CGFloat itemWidth = viewWidth - padding - padding;
    CGFloat itemHeight = 44;
    
    self.wineButton.frame = CGRectMake(padding, padding + ypadding, itemWidth,
    itemHeight);
    CGFloat bottomOfWineButton = CGRectGetMaxY(self.wineButton.frame);
    self.whiskeyButton.frame = CGRectMake(padding, bottomOfWineButton + padding + ypadding, itemWidth, itemHeight);
    
   } else if (UIDeviceOrientationIsLandscape([UIDevice currentDevice].orientation)) {
    NSLog(@"Landscape!");
    CGFloat viewWidth = 480;
    CGFloat padding = 50;
    CGFloat ypadding = 50;
    CGFloat itemWidth = viewWidth - padding - padding;
    CGFloat itemHeight = 44;
        
    self.wineButton.frame = CGRectMake(padding, padding + ypadding, itemWidth,itemHeight);
    CGFloat bottomOfWineButton = CGRectGetMaxY(self.wineButton.frame);
    self.whiskeyButton.frame = CGRectMake(padding, bottomOfWineButton + padding + ypadding, itemWidth, itemHeight);
    }
   }
    else NSLog(@"Ipad!");
    if (UIDeviceOrientationIsPortrait([UIDevice currentDevice].orientation)) {
        NSLog(@"Portrait!");
        CGFloat viewWidth = 768;
        CGFloat padding = 20;
        CGFloat ypadding = 50;
        CGFloat itemWidth = viewWidth - padding - padding;
        CGFloat itemHeight = 44;
        
        self.wineButton.frame = CGRectMake(padding, padding + ypadding, itemWidth,
                                           itemHeight);
        CGFloat bottomOfWineButton = CGRectGetMaxY(self.wineButton.frame);
        self.whiskeyButton.frame = CGRectMake(padding, bottomOfWineButton + padding + ypadding, itemWidth, itemHeight);
        
    } else if (UIDeviceOrientationIsLandscape([UIDevice currentDevice].orientation)) {
        NSLog(@"Landscape!");
        CGFloat viewWidth = 1004;
        CGFloat padding = 50;
        CGFloat ypadding = 50;
        CGFloat itemWidth = viewWidth - padding - padding;
        CGFloat itemHeight = 44;
        
        self.wineButton.frame = CGRectMake(padding, padding + ypadding, itemWidth,itemHeight);
        CGFloat bottomOfWineButton = CGRectGetMaxY(self.wineButton.frame);
        self.whiskeyButton.frame = CGRectMake(padding, bottomOfWineButton + padding + ypadding, itemWidth, itemHeight);
    }
    
    // Add iPad code
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
