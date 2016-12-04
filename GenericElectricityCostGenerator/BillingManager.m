//
//  BillingManager.m
//  GenericElectricityCostGenerator
//
//  Created by Firdous Ali on 04/12/2016.
//  Copyright © 2016 Firdous Ali. All rights reserved.
//

#import "BillingManager.h"

@implementation BillingManager

-(NSDictionary*)getInitialCategoryData{
    NSDictionary *data = @{
                           @"Category A":@{
                                   @"categoryName": @"Category A",
                                   @"pointPerMeter": @(25),
                                   @"startAt":@(0),
                                   @"endAt":@(50)
                                   },
                           @"Category B":@{
                                   @"categoryName": @"Category B",
                                   @"pointPerMeter": @(35),
                                   @"startAt":@(50),
                                   @"endAt":@(100)
                                   },
                           @"Category C":@{
                                   @"categoryName": @"Category C",
                                   @"pointPerMeter": @(40),
                                   @"startAt":@(100),
                                   @"endAt":@(150)
                                   }
                           };
    
    return data;
}

@end
