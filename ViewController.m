//
//  ViewController.m
//  Polygon
//
//  Created by Thibault Lenclos on 22/10/12.
//  Copyright (c) 2012 Thibault Lenclos. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize labelPolygon;
@synthesize labelSideNumber;

Polygon * polygon;

- (void) update
{
    self.labelPolygon.text = polygon.name;
    self.labelSideNumber.text = [NSString stringWithFormat:@"%d", polygon.numberOfSide];
    self.PolygonView.numberOfSide = polygon.numberOfSide;
    [self.PolygonView setNeedsDisplay];
}

- (void)viewWillAppear:(BOOL)animated
{
    polygon = [[Polygon alloc] initWithNumberOfSide:3];
    
    // Add and init polygon view
    CGRect viewRect = CGRectMake(10,100,300,300);
    self.PolygonView = [[PolygonView alloc] initWithFrame:viewRect];
    self.PolygonView.numberOfSide = polygon.numberOfSide;
    [self.view addSubview:self.PolygonView];
    
    [self update];
}

- (IBAction)handleSideNumber:(UIStepper *)sender {
    NSUInteger value = sender.value;
    polygon.numberOfSide = value;

    [self update];
}

- (void)viewDidUnload {
    [self setLabelPolygon:nil];
    [self setLabelSideNumber:nil];
    [super viewDidUnload];
}
@end