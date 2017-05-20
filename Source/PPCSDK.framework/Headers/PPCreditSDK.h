//
//  PPCreditSDK.h
//  PPSDK
//
//  Created by clf on 16/11/21.
//  Copyright © 2016年 ppc. All rights reserved.
// 支持 ios7和ios7之后的系统

#import <Foundation/Foundation.h>

/**
 @brief 回调参数
 @param code 返回状态码 
 @param token token
 */
typedef  void (^sdkCallBackArgument)(NSString *code, NSString *token);

typedef  void (^sdkReturnSDKToken)(NSString *code, NSString *sdkToken);
/**
 SDK功能类别
 */

typedef NS_ENUM(NSUInteger, PPCSDKType) {
    PPCSDKTypeMobileInfo=3
};

@interface PPCreditSDK : NSObject

/**
 @brief 回调参数SDK单例对象
 */
+(PPCreditSDK *)sharePPCSDK;

/**
 @brief 通过appKey初始化
 @param appKey     appkey
 @param appSecret  appSecret
 */

-(void)initWithAppKey:(NSString *) appKey appSecret:(NSString *)appSecret;


/**
 SDK调用

 @param userName   用户姓名
 @param cardID     用户身份证号码
 @param sdktoken   sdktoken
 @param actoken    actoken
 @param deviceid   手机标识
 @param type       认证类型
 @param controller 导航控制器
 @param callBack   回调函数
 */
-(void)configSDKWithUserName:(NSString *)userName
                      cardID:(NSString *)cardID
                    sdktoken:(NSString *)sdktoken actoken:(NSString *)actoken
                    deviceid:(NSString *)deviceid
                  ppcSDKType:(PPCSDKType)type
               NavController:(UIViewController*)controller
                 sdkCallBack:(sdkCallBackArgument)callBack;


/**
获取手机标识 deviceId

 @return deviceId
 */
-(NSString *)getDeviceId;

/**
 获取sdkToken
 */
-(void)getSDKTokenWithDeviceId:(NSString *)deviceId returnSDKToken:(sdkReturnSDKToken)sdkTokenBack;

@end
