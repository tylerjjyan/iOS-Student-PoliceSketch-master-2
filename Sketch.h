//
//  Sketch.h
//  PoliceSketch
//
//  Created by Tyler Yan on 2015-07-12.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Sketch : NSObject

@property (nonatomic, strong) NSArray *eyesArray;
@property (nonatomic, strong) NSArray *noseArray;
@property (nonatomic, strong) NSArray *mouthArray;

+(Sketch*)getSketch;

-(NSString*)currentEye;
-(NSString*)currentNose;
-(NSString*)currentMouth;

-(void)nextEyes;
-(void)nextNose;
-(void)nextMouth;
-(void)previousEyes;
-(void)previousNose;
-(void)previousMouth;


@end
