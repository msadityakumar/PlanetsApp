//
//  OWSpaceObject.h
//  OuterSpaceObjects
//
//  Created by abhishek on 18/09/15.
//  Copyright (c) 2015 abhishek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface OWSpaceObject : NSObject


@property(strong,nonatomic) NSString*planetName;
@property(nonatomic) float planetGravity;
@property(nonatomic) float planetDiameter;
@property(nonatomic) float planetYearLength;
@property(nonatomic) float planetDayLength;
@property(nonatomic) float planetTemperature;
@property(nonatomic) int noOfMoons;
@property(strong ,nonatomic) NSString *planetNickName;
@property(strong,nonatomic)NSString *interestingFact;
@property(strong,nonatomic)UIImage *planetImage;


-(id)initWithData:(NSDictionary*)data AndImage:(UIImage*)image;
@end
