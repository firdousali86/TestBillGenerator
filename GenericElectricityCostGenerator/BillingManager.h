//
//  BillingManager.h
//  GenericElectricityCostGenerator
//
//  Created by Firdous Ali on 04/12/2016.
//  Copyright © 2016 Firdous Ali. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface BillingManager : NSObject

+(NSNumber*)calculatCost:(NSNumber*)reading;

@end
