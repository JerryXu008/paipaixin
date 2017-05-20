//
//  PGPPCSDKLib.h
//  PGPPCSDKLib
//
//  Created by 邱立宏 on 2017/5/16.
//  Copyright © 2017年 邱立宏. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "PGPlugin.h"
#import "PGMethod.h"

@interface PGPPCSDKLib : PGPlugin


/**
 获取设备id
 */
- (void)getPPCDeviceId:(PGMethod *)commonds;


/**
 获取token
 
 @param commonds 传入userName+IDcard
 */
- (void)getPPCToken:(PGMethod *)commonds;



/**
 获取token
 
 @param commonds 传入SDKToken + userName + IDcard
 */
- (void)getPPCTokenWithSDKToken:(PGMethod *)commonds;

@end
