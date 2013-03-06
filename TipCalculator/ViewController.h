//
//  ViewController.h
//  TipCalculator
//
//  Created by Angie on 3/3/13.
//  Copyright (c) 2013 Angie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UITextField *billTextField;
@property (weak, nonatomic) IBOutlet UILabel *tipLabel;
- (IBAction)calculateTapped:(id)sender;

@end
