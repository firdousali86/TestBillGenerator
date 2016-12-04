//
//  BillingManager.m
//  GenericElectricityCostGenerator
//
//  Created by Firdous Ali on 04/12/2016.
//  Copyright © 2016 Firdous Ali. All rights reserved.
//

#import "BillingManager.h"
#import "DataManager.h"

@implementation BillingManager

+(NSNumber*)calculatCost:(NSNumber*)reading{
//    CGFloat currentPoints;
    CGFloat remainingreading;
    CGFloat totalPoints;
    
    NSArray *categories = [DataManager getCategoryData];
    
    remainingreading = [reading floatValue];
    
    
    for (NSDictionary *category in categories) {
        
        if (remainingreading > 0) {
            NSNumber *startAt = [category objectForKey:@"startAt"];
            NSNumber *endAt = [category objectForKey:@"endAt"];
            NSNumber *pointPerMeter = [category objectForKey:@"pointPerMeter"];
            
            CGFloat range = [endAt floatValue] - [startAt floatValue];
            
            if (remainingreading > range) {
                totalPoints += [pointPerMeter floatValue] * range;
                remainingreading -= range;
            }
            else{
                totalPoints += [pointPerMeter floatValue] * remainingreading;
                remainingreading = 0;
            }
        }
        else{
            break;
        }
    }
    
    return @(totalPoints);
}

@end
