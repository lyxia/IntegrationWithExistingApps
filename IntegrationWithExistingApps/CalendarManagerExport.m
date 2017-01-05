//
//  CalendarManagerExport.m
//  IntegrationWithExistingApps
//
//  Created by lyxia on 2017/1/5.
//  Copyright © 2017年 lyxia. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "IntegrationWithExistingApps-Swift.h"
#import "RCTBridgeModule.h"

@interface RCT_EXTERN_MODULE(CalendarManager, NSObject)

RCT_EXTERN_METHOD(doSomethingWithString:(NSString * _Nonnull)string withFoo:(NSInteger)a bar:(NSInteger)b)
@end
