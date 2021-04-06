//
//  RCSDataSource.h
//  rongcloud-ios-imdemo-userinfo&groupinfo
//
//  Created by Jue on 2020/8/20.
//  Copyright © 2020 RC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <RongIMKit/RongIMKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RCSDataSource : NSObject<RCIMUserInfoDataSource,RCIMGroupInfoDataSource>

+ (RCSDataSource *)sharedInstance;

// 配置当前登录者的用户信息
- (void)configCurrentUserInfo:(NSString *)userId;

@end

NS_ASSUME_NONNULL_END
