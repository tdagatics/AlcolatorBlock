//
//  WhiskeyViewController.m
//  AlcolatorBlock
//
//  Created by Anthony Dagati on 9/3/14.
//  Copyright (c) 2014 Black Rail Capital. All rights reserved.
//

#import "BLCWhiskeyViewController.h"

@implementation BLCWhiskeyViewController

- (instancetype) init {
    self = [super init];
    if (self) {
        self.title = NSLocalizedString(@"Whiskey", @"whiskey");
    }
    return self;
}
-(void) viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed: 0.992 green: 0.992 blue:0.558 alpha:1];
    }

-(void)buttonPressed:(UIButton *)sender;
{
    [self.beerPercentTextField resignFirstResponder];
    
    int numberOfBeers = self.beerCountSlider.value;
    int ouncesInOneBeerGlass = 12;
    
    float alcoholPercentageOfBeer = [self.beerPercentTextField.text floatValue] / 100;
    float ouncesOfAlcoholPerBeer = ouncesInOneBeerGlass * alcoholPercentageOfBeer;
    float ouncesOfAlcoholTotal = ouncesOfAlcoholPerBeer * numberOfBeers;
    
    float ouncesInOneWhiskeyGlass = 1; // a 1oz shot
    float alcoholPercentageOfWhiskey = 0.4; // 40% is average
    
    float ouncesOfAlcoholPerWhiskeyGlass = ouncesInOneWhiskeyGlass * alcoholPercentageOfWhiskey;
    float numberOfWhiskeyGlassesForEquivalentAlcoholAmount = ouncesOfAlcoholTotal / ouncesOfAlcoholPerWhiskeyGlass;
    
    NSString *beerText;
    
    if (numberOfBeers == 1) {
        beerText = NSLocalizedString(@"beer", "singular beer");
    } else {
        beerText = NSLocalizedString(@"beers", "plural of beer");
    }
    
    NSString *whiskeyText;
    
    if (numberOfWhiskeyGlassesForEquivalentAlcoholAmount == 1) {
        whiskeyText = NSLocalizedString(@"shot", "singular shot");
        self.title = [NSString stringWithFormat:@"%f shot of whiskey", numberOfWhiskeyGlassesForEquivalentAlcoholAmount];
    } else {
        self.title = [NSString stringWithFormat:@"%f shots of whiskey", numberOfWhiskeyGlassesForEquivalentAlcoholAmount];
        whiskeyText = NSLocalizedString(@"shots", "plural of shot");
    }
    
    NSString *resultText = [NSString stringWithFormat:NSLocalizedString(@"%d %@ contains as much alcohol as %.lf %@ of whiskey",nil), numberOfBeers, beerText, numberOfWhiskeyGlassesForEquivalentAlcoholAmount, whiskeyText];
    self.resultLabel.text = resultText;
    self.title = [NSString stringWithFormat:(@"Whiskey (%.lf %@)"), numberOfWhiskeyGlassesForEquivalentAlcoholAmount, whiskeyText];
}
@end
