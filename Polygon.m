//
//  Polygon.m
//  Polygon
//
//  Created by Thibault Lenclos on 22/10/12.
//  Copyright (c) 2012 Thibault Lenclos. All rights reserved.
//

#import "Polygon.h"

@implementation Polygon

@synthesize numberOfSide = _numberOfSide;

- (id)init
{
    self = [super init];
    if (self) {
        self.numberOfSide = kPolygoneMinimumNumberOfSide;
    }
    return self;
}

// Called when accessed with dotSyntax
- (void) setNumberOfSide:(int)numberOfSide
{
    if(numberOfSide < kPolygoneMinimumNumberOfSide ||
       numberOfSide > kPolygoneMaximumNumberOfSide)
        return;
    
    _numberOfSide = numberOfSide;
}

- (id)initWithNumberOfSide:(int)number
{
    self = [super init];
    if (self) {
        self.numberOfSide = number;
    }
    return self;
}

- (NSString *) name
{
    NSString * name;
    
    switch (self.numberOfSide) {
        case 3:
            name = @"Triangle";
            break;
        case 4:
            name = @"Quadrilatère";
            break;
        case 5:
            name = @"Pentagone";
            break;
        case 6:
            name = @"Hexagone";
            break;
        case 7:
            name = @"Heptagone";
            break;
        case 8:
            name = @"Octogone";
            break;
        case 9:
            name = @"Ennéagone";
            break;
        case 10:
            name = @"Décagone";
            break;
        case 11:
            name = @"Hendécagone";
            break;
        case 12:
            name = @"Dodécagone";
            break;
        default:
            name = @"Polygone";
            break;
    }
    
    return name;
}

@end;
