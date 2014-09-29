//
//  WhiskeyViewController.m
//  AlcolatorBlock
//
//  Created by Anthony Dagati on 9/3/14.
//  Copyright (c) 2014 Black Rail Capital. All rights reserved.
//

#import "BLCWhiskeyViewController.h"

@implementation BLCWhiskeyViewController

-(void) viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"Whiskey", @"whiskey");
    }

-(float)numberOfWhiskeyGlassesForEquivalentAlcoholAmount {
    int numberOfBeers = self.beerCountSlider.value;
    int ouncesInOneBeerGlass = 12; // assumes 12 oz beer bottles
    
    float alcoholPercentageOfBeer = [self.beerPercentTextField.text floatValue] / 100;
    float ouncesOfAlcoholPerBeer = ouncesInOneBeerGlass * alcoholPercentageOfBeer;
    float ouncesofAlcoholTotal = ouncesOfAlcoholPerBeer * numberOfBeers;
    
    // now calculate the equivalent amount of wine
    
    float ouncesInOneWhiskeyGlass = 1; // A 1 oz shot
    float alcoholPercentageOfWhiskey = 0.4; // 40% is average
    
    float ouncesOfAlcoholPerWhiskeyGlass = ouncesInOneWhiskeyGlass * alcoholPercentageOfWhiskey;
    float numberOfWhiskeyGlassesForEquivalentAlcoholAmount = ouncesofAlcoholTotal / ouncesOfAlcoholPerWhiskeyGlass;
    return numberOfWhiskeyGlassesForEquivalentAlcoholAmount;
}


-(void)buttonPressed:(UIButton *)sender;
{
    [self.beerPercentTextField resignFirstResponder];
    
    int numberOfBeers = self.beerCountSlider.value;
//    int ouncesInOneBeerGlass = 12;
    
//    float alcoholPercentageOfBeer = [self.beerPercentTextField.text floatValue] / 100;
    //   float ouncesOfAlcoholPerBeer = ouncesInOneBeerGlass * alcoholPercentageOfBeer;
    // float ouncesOfAlcoholTotal = ouncesOfAlcoholPerBeer * numberOfBeers;
    
    //float ouncesInOneWhiskeyGlass = 1; // a 1oz shot
    //float alcoholPercentageOfWhiskey = 0.4; // 40% is average
    
    //float ouncesOfAlcoholPerWhiskeyGlass = ouncesInOneWhiskeyGlass * alcoholPercentageOfWhiskey;
  //  float numberOfWhiskeyGlassesForEquivalentAlcoholAmount = ouncesOfAlcoholTotal / ouncesOfAlcoholPerWhiskeyGlass;
    
    NSString *beerText;
    
    if (numberOfBeers == 1) {
        beerText = NSLocalizedString(@"beer", "singular beer");
    } else {
        beerText = NSLocalizedString(@"beers", "plural of beer");
    }
    
    NSString *whiskeyText;
    
    if (self.numberOfWhiskeyGlassesForEquivalentAlcoholAmount == 1) {
        whiskeyText = NSLocalizedString(@"shot", "singular shot");
    } else {
        whiskeyText = NSLocalizedString(@"shots", "plural of shot");
    }
    
    NSString *resultText = [NSString stringWithFormat:NSLocalizedString(@"%d %@ contains as much alcohol as %.lf %@ of whiskey",nil), numberOfBeers, beerText, self.numberOfWhiskeyGlassesForEquivalentAlcoholAmount, whiskeyText];
    self.resultLabel.text = resultText;
    self.title = [NSString stringWithFormat:(@"Whiskey (%.lf %@)"), self.numberOfWhiskeyGlassesForEquivalentAlcoholAmount, whiskeyText];
}
@end
