//
//  LPSViewController.m
//  PoliceSketch
//
//  Created by Steven Masuch on 2014-07-20.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LPSViewController.h"
#import "Sketch.h"

@interface LPSViewController ()

@end

@implementation LPSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIImage * eyesIMG = [UIImage imageNamed:[Sketch getSketch].currentEye];
    UIImage * noseIMG = [UIImage imageNamed:[Sketch getSketch].currentNose];
    UIImage * mouthIMG = [UIImage imageNamed:[Sketch getSketch].currentMouth];
	
    self.eyesImage.image = eyesIMG;
    self.noseImage.image = noseIMG;
    self.mouthImage.image = mouthIMG;
    
}
- (IBAction)nextEye:(id)sender {
    
    [[Sketch getSketch] nextEyes];
    UIImage *nextEyesIMG = [UIImage imageNamed:[Sketch getSketch].currentEye];
    self.eyesImage.image = nextEyesIMG;
    
    
    
}
- (IBAction)previousEye:(id)sender {
    
    [[Sketch getSketch] previousEyes];
    UIImage *nextEyesIMG = [UIImage imageNamed:[Sketch getSketch].currentEye];
    self.eyesImage.image = nextEyesIMG;
}

- (IBAction)nextNose:(id)sender {
    [[Sketch getSketch] nextNose];
    
    UIImage *nextNoseIMG = [UIImage imageNamed:[Sketch getSketch].currentNose];
    self.noseImage.image = nextNoseIMG;
    
    
}
- (IBAction)previousNose:(id)sender {
    [[Sketch getSketch] previousNose];
    
    UIImage *nextNoseIMG = [UIImage imageNamed:[Sketch getSketch].currentNose];
    self.noseImage.image = nextNoseIMG;
}

- (IBAction)nextMouth:(id)sender {
    
    [[Sketch getSketch] nextMouth];
    
    UIImage *nextMouthIMG = [UIImage imageNamed:[Sketch getSketch].currentMouth];
    self.mouthImage.image = nextMouthIMG;
}
- (IBAction)previousMouth:(id)sender {
    [[Sketch getSketch] previousMouth];
    
    UIImage *nextMouthIMG = [UIImage imageNamed:[Sketch getSketch].currentMouth];
    self.mouthImage.image = nextMouthIMG;
}

@end
