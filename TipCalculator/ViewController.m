//
//  ViewController.m
//  TipCalculator
//
//  Created by Angie on 3/3/13.
//  Copyright (c) 2013 Angie. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)calculateTapped:(id)sender {
    
    //Get the total Bill
    float bill = self.billTextField.text.floatValue; // store float bill 
    
    // Get the tip rate
    int index = self.segmentedControl.selectedSegmentIndex; // know what button is pressed at top
    
    float tipRate; // condition for what the tiprate can be. no usecase for no button yet 
    
    if (index == 0) {
        tipRate = .15;
    }else if(index == 1){
        tipRate = .20;
    }else{
        tipRate = .25;
    }
    
    // Calculate the Tip 
    float tip; // set the tip here 
    
    tip = bill*tipRate; 
    
    // Display the tip
    self.tipLabel.text = [NSString stringWithFormat:@"$%.2f", tip];
    // display the tip, needs to be a string though so converting
    // instead of alloc and initializing (allow set string to inject variables)
    // the % is the tip, knows its the tip because it is an argument
    
}
@end
