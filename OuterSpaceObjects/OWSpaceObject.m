//
//  OWSpaceObject.m
//  OuterSpaceObjects
//
//  Created by abhishek on 18/09/15.
//  Copyright (c) 2015 abhishek. All rights reserved.
//

#import "OWSpaceObject.h"
#import "AstronomicalData.h"

@implementation OWSpaceObject

-(id)initWithData:(NSDictionary *)data AndImage:(UIImage *)image
{

    self  = [super init];
    
    _planetName = data[PLANET_NAME];
    _planetGravity = [data[PLANET_GRAVITY] floatValue];
    _planetDiameter = [data [PLANET_DIAMETER] floatValue];
    _planetYearLength = [data[PLANET_YEAR_LENGTH] floatValue];
    _planetDayLength = [data [PLANET_DAY_LENGTH] floatValue];
    _noOfMoons = [data[PLANET_NUMBER_OF_MOONS]intValue];
    _planetTemperature = [data[PLANET_TEMPERATURE]intValue];
    _interestingFact = data[PLANET_INTERESTING_FACT];
    _planetNickName = data[PLANET_NICKNAME];
    _planetImage = image;
    
    
    
    
    
    return self;
}

@end
