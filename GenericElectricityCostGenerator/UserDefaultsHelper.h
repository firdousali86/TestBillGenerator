//
//  UserDefaultsHelper.h
//  GenericElectricityCostGenerator
//
//  Created by Firdous Ali on 04/12/2016.
//  Copyright © 2016 Firdous Ali. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserDefaultsHelper : NSObject

+(UserDefaultsHelper*)getInstance;

-(void)setValue:(id)value forKey:(NSString *)key;
-(id)getValue:(NSString*)key andDefault:(id)defaultValue;
-(void)resetAllWithExceptionList:(NSArray*)exceptionList;
-(void)reset:(NSArray*)keys;

@end
