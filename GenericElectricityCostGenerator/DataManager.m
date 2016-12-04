//
//  DataManager.m
//  GenericElectricityCostGenerator
//
//  Created by Firdous Ali on 04/12/2016.
//  Copyright © 2016 Firdous Ali. All rights reserved.
//

#import "DataManager.h"
#import "UserDefaultsHelper.h"

@implementation DataManager

+(NSArray*)getCategoryData{
    
    NSArray *data = [[UserDefaultsHelper getInstance] getValue:@"categoryData" andDefault:nil];
    
    if (!data) {
        data = @[
                 @{
                     @"categoryName": @"Category A",
                     @"pointPerMeter": @(25),
                     @"startAt":@(0),
                     @"endAt":@(50)
                     },
                 @{
                     @"categoryName": @"Category B",
                     @"pointPerMeter": @(35),
                     @"startAt":@(50),
                     @"endAt":@(100)
                     },
                 @{
                     @"categoryName": @"Category C",
                     @"pointPerMeter": @(40),
                     @"startAt":@(100),
                     @"endAt":@(150)
                     }
                 ];
    }
    
    return data;
}

@end
