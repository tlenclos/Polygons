//
//  Polygon.h
//  Polygon
//
//  Created by Thibault Lenclos on 22/10/12.
//  Copyright (c) 2012 Thibault Lenclos. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Polygon : NSObject

#define kPolygoneMinimumNumberOfSide 3
#define kPolygoneMaximumNumberOfSide 12

@property (readwrite, nonatomic, assign) int numberOfSide;
@property (readonly, nonatomic) NSString * name;

- (id)initWithNumberOfSide:(int)number;

@end
