//
//  PGPPCSDKLib.h
//  PGPPCSDKLib
//
//  Created by 邱立宏 on 2017/5/16.
//  Copyright © 2017年 邱立宏. All rights reserved.
//
#import "PGPPCSDKLib.h"
#import <Foundation/Foundation.h>

#import "PGPlugin.h"
#import "PGMethod.h"


#import <PPCSDK/PPCreditSDK.h>
#import "testAAA.h"
@implementation PGPPCSDKLib





/**
 获取设备id
 */
- (void)getPPCDeviceId:(PGMethod *)commonds{
    [[PPCreditSDK sharePPCSDK] initWithAppKey:@"fsf" appSecret:@"fsdfs"];
    testAAA *aaa=[testAAA new];
    [aaa printA];
    
    PDRPluginResult *result;
    
    
    NSString * callBackID = [commonds.arguments objectAtIndex:0];
    
    if (PDRCommandStatusOK) {
        // 运行Native代码结果和预期相同，调用回调通知JS层运行成功并返回结果
        result = [PDRPluginResult resultWithStatus:PDRCommandStatusError messageAsString:@"您的请求出错，请检查后再试！"];
        
    } else {
        // 如果Native代码运行结果和预期不同，需要通过回调通知JS层出现错误，并返回错误提示
        result = [PDRPluginResult resultWithStatus:PDRCommandStatusError messageAsString:@"您的请求出错，请检查后再试！"];
    }
    result.keepCallback = YES;
    
    NSLog(@"[result toJSONString] == %@",[result toJSONString]);
    // 通知JS层Native层运行结果出错
    [self toCallback:callBackID withReslut:[result toJSONString]];

    
    
}


/**
 获取token
 
 @param commonds 传入userName+IDcard
 */
- (void)getPPCToken:(PGMethod *)commonds{
}



/**
 获取token
 
 @param commonds 传入SDKToken + userName + IDcard
 */
- (void)getPPCTokenWithSDKToken:(PGMethod *)commonds{


}

@end
