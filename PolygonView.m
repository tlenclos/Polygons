//
//  PolygonView.m
//  Polygon
//
//  Created by Thibault Lenclos on 24/10/12.
//  Copyright (c) 2012 Thibault Lenclos. All rights reserved.
//

#import "PolygonView.h"

@implementation PolygonView

-(id)initWithFrame:(CGRect)frame
{
	self = [super initWithFrame:frame];
	if(self != nil)
	{
		self.backgroundColor = [UIColor whiteColor];
		self.clearsContextBeforeDrawing = YES;
	}
	return self;
}

- (void)drawRect:(CGRect)rect
{
    CGSize viewSize = rect.size;
    CGPoint center = CGPointMake(viewSize.height/2, viewSize.width/2);
    CGFloat diameter = 120.0;
    CGFloat sidesNumber = self.numberOfSide;
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    // Drawing with a blue fill color
	CGContextSetRGBFillColor(context, 0.5, 0.8, 0.8, 1.0);
    
    // Now add the hexagon to the current path
	CGContextMoveToPoint(context, center.x, center.y + diameter);
	for(int i = 1; i < sidesNumber+1; ++i)
	{
		CGFloat x = diameter * sinf(i * 2.0 * M_PI / sidesNumber);
		CGFloat y = diameter * cosf(i * 2.0 * M_PI / sidesNumber);
		CGContextAddLineToPoint(context, center.x + x, center.y + y);
	}
    
    CGContextDrawPath(context, kCGPathFillStroke);
    
    // And close the subpath.
	CGContextClosePath(context);
}

@end
