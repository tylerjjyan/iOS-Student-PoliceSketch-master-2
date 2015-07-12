//
//  Sketch.m
//  PoliceSketch
//
//  Created by Tyler Yan on 2015-07-12.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import "Sketch.h"

@interface Sketch ()

@property (nonatomic,assign) int eyesArrayIndex;
@property (nonatomic,assign) int noseArrayIndex;
@property (nonatomic,assign) int mouthArrayIndex;

@end

@implementation Sketch

+(Sketch*)getSketch{
    static Sketch *sketch = nil;
    
    if (sketch == nil) {
        sketch = [[Sketch alloc] init];
        
        sketch.eyesArray = @[
                             @"eyes_1.jpg",
                             @"eyes_2.jpg",
                             @"eyes_3.jpg",
                             @"eyes_4.jpg",
                             @"eyes_5.jpg"
                             ];
        sketch.noseArray = @[
                             @"nose_1.jpg",
                             @"nose_2.jpg",
                             @"nose_3.jpg",
                             @"nose_4.jpg",
                             @"nose_5.jpg"
                             ];
        
        sketch.mouthArray = @[
                             @"mouth_1.jpg",
                             @"mouth_2.jpg",
                             @"mouth_3.jpg",
                             @"mouth_4.jpg",
                             @"mouth_5.jpg"
                             ];
        
        sketch.eyesArrayIndex = 0;
        sketch.noseArrayIndex = 0;
        sketch.mouthArrayIndex = 0;
        
        
    }
    return sketch;
    
    
}

-(NSString*)currentEye{
    
    return [self.eyesArray objectAtIndex:self.eyesArrayIndex];
    
}
-(NSString*)currentNose{
    
    return [self.noseArray objectAtIndex:self.noseArrayIndex];
}
-(NSString*)currentMouth{
    
    return [self.mouthArray objectAtIndex:self.mouthArrayIndex];
}

-(void)nextEyes{
    
    if (self.eyesArrayIndex == self.eyesArray.count - 1) {
        
        self.eyesArrayIndex = 0;
    } else {
        
        self.eyesArrayIndex ++;
    }
}
-(void)nextNose{
    if (self.noseArrayIndex == self.noseArray.count - 1) {
        
        self.noseArrayIndex = 0;
    } else {
        
        self.noseArrayIndex ++;
    }
}
-(void)nextMouth{
    if (self.mouthArrayIndex == self.mouthArray.count - 1) {
        
        self.mouthArrayIndex = 0;
    } else {
        
        self.mouthArrayIndex ++;
    }
}
-(void)previousEyes{
    
    if (self.eyesArrayIndex == 0) {
        self.eyesArrayIndex = (int)self.eyesArray.count - 1;
        
    }else{
        self.eyesArrayIndex --;
    }
}


-(void)previousNose{
    
    if (self.noseArrayIndex == 0) {
        self.noseArrayIndex = (int)self.noseArray.count - 1;
        
    }else{
        self.noseArrayIndex --;
    }
}

-(void)previousMouth{
    
    if (self.mouthArrayIndex == 0) {
        self.mouthArrayIndex = (int)self.mouthArray.count - 1;
        
    }else{
        self.mouthArrayIndex --;
    }
}


@end
