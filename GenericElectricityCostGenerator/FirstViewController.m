//
//  FirstViewController.m
//  GenericElectricityCostGenerator
//
//  Created by Firdous Ali on 04/12/2016.
//  Copyright © 2016 Firdous Ali. All rights reserved.
//

#import "FirstViewController.h"
#import "BillingManager.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)calculateCostAction:(id)sender {
    NSNumber *totalPoint = [BillingManager calculatCost:@([_meterReadingField.text floatValue])];
    [_totalpoints setText:[totalPoint stringValue]];
}
@end
