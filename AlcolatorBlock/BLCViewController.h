//
//  ViewController.h
//  AlcolatorBlock
//
//  Created by Anthony Dagati on 9/2/14.
//  Copyright (c) 2014 Black Rail Capital. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BLCViewController : UIViewController < UITextFieldDelegate >

@property (weak, nonatomic) UITextField *beerPercentTextField;
@property (weak, nonatomic) UISlider *beerCountSlider;
@property (weak, nonatomic) UILabel *resultLabel;

@end
