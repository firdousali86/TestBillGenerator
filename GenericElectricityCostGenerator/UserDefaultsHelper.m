//
//  UserDefaultsHelper.m
//  GenericElectricityCostGenerator
//
//  Created by Firdous Ali on 04/12/2016.
//  Copyright © 2016 Firdous Ali. All rights reserved.
//

#import "UserDefaultsHelper.h"
#import "RNEncryptor.h"
#import "RNDecryptor.h"

@implementation UserDefaultsHelper

#define kEncryptionPassword @"ufmnbuf"

+(UserDefaultsHelper*)getInstance{
    static UserDefaultsHelper *sharedMyManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMyManager = [[self alloc] init];
    });
    return sharedMyManager;
}

-(void)setValue:(id)value forKey:(NSString *)key{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];

    value = [self encrypt:value];
    [defaults setValue:value forKey:key];
    [defaults synchronize];
}

-(id)getValue:(NSString*)key andDefault:(id)defaultValue{
    NSUserDefaults *defaults=[NSUserDefaults standardUserDefaults];
    
    if([defaults objectForKey:key])
        return [self decrypt:[defaults objectForKey:key]];
    
    return defaultValue;
}

-(void)resetAllWithExceptionList:(NSArray *)exceptionList{
    NSDictionary *defaultsDictionary = [[NSUserDefaults standardUserDefaults] dictionaryRepresentation];
    for (NSString *key in [defaultsDictionary allKeys]) {
        if(exceptionList && [exceptionList containsObject:key]) {
            continue;
        }
        [[NSUserDefaults standardUserDefaults] removeObjectForKey:key];
    }
}

-(void)reset:(NSArray *)keys{
    if(!keys || keys.count < 1) {
        return;
    }
    
    NSDictionary *defaultsDictionary = [[NSUserDefaults standardUserDefaults] dictionaryRepresentation];
    for (NSString *key in [defaultsDictionary allKeys]) {
        
        if([keys containsObject:key]) {
            [[NSUserDefaults standardUserDefaults] removeObjectForKey:key];
        }        
    }
}

- (id) encrypt :(id)value {
    if(![value isKindOfClass:[NSString class]]) {
        return value;
    }
    
    NSData *data = [(NSString*)value dataUsingEncoding:NSUTF8StringEncoding];
    NSError *error;
    NSData *encryptedData = [RNEncryptor encryptData:data
                                        withSettings:kRNCryptorAES256Settings
                                            password:kEncryptionPassword
                                               error:&error];
    if(error) {
        return value;
    }
    
    return encryptedData;
}

- (id) decrypt :(id)value {
    if(![value isKindOfClass:[NSData class]]) {
        return value;
    }
    
    NSData *data = (NSData*)value;
    NSError *error;
    NSData *decryptedData = [RNDecryptor decryptData:data
                                        withPassword:kEncryptionPassword
                                               error:&error];
    if(error) {
        return value;
    }
    
    return [[NSString alloc] initWithData:decryptedData encoding:NSUTF8StringEncoding];
}

@end
