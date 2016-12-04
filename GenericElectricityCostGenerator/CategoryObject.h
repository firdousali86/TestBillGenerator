//
//  CategoryObject.h
//  GenericElectricityCostGenerator
//
//  Created by Firdous Ali on 04/12/2016.
//  Copyright © 2016 Firdous Ali. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CategoryObject : NSObject

@property (nonatomic, strong) NSString *categoryName;
@property (nonatomic, assign) NSInteger pointPerMeter;
@property (nonatomic, assign) NSInteger startAt;
@property (nonatomic, assign) NSInteger endAt;

-(void)set:(NSDictionary*)object;

@end
