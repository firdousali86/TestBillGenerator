//
//  FirstViewController.h
//  GenericElectricityCostGenerator
//
//  Created by Firdous Ali on 04/12/2016.
//  Copyright © 2016 Firdous Ali. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *meterReadingField;
@property (weak, nonatomic) IBOutlet UITextField *customerNumberField;
@property (weak, nonatomic) IBOutlet UIButton *calculatbtn;
@property (weak, nonatomic) IBOutlet UILabel *totalpoints;

- (IBAction)calculateCostAction:(id)sender;

@end

