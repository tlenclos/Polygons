//
//  ViewController.h
//  Polygon
//
//  Created by Thibault Lenclos on 22/10/12.
//  Copyright (c) 2012 Thibault Lenclos. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Polygon.h"
#import "PolygonView.h"

@interface ViewController : UIViewController

- (IBAction)handleSideNumber:(UIStepper *)sender;

@property (weak, nonatomic) IBOutlet UILabel *labelPolygon;
@property (weak, nonatomic) IBOutlet UILabel *labelSideNumber;
@property (strong, nonatomic) PolygonView *PolygonView;

@end
