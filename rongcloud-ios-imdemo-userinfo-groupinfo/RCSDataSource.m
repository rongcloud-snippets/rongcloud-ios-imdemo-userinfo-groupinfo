//
//  RCSDataSource.m
//  rongcloud-ios-imdemo-userinfo&groupinfo
//
//  Created by Jue on 2020/8/20.
//  Copyright © 2020 RC. All rights reserved.
//

#import "RCSDataSource.h"

@implementation RCSDataSource

+ (RCSDataSource *)sharedInstance {
    static RCSDataSource *instance = nil;
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        instance = [[[self class] alloc] init];

    });
    return instance;
}

- (void)getUserInfoWithUserId:(NSString *)userId completion:(void (^)(RCUserInfo *))completion {
    // 代码写死 tester2 是为了方便演示，实际需要判断 userId，去应用服务器请求头像和昵称来构造 RCUserInfo 对象
    if ([userId isEqualToString:@"tester2"]) {
        RCUserInfo *userInfo = [[RCUserInfo alloc] initWithUserId:userId name:@"索隆" portrait:@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1597918691672&di=2a9301d135a8f71395c9b0ef062c6c35&imgtype=0&src=http%3A%2F%2Fimg.mp.itc.cn%2Fupload%2F20160607%2Fbf328a251f944707a2118895a5ef73bf_th.jpeg"];
        completion(userInfo);
    }
}

- (void)getGroupInfoWithGroupId:(NSString *)groupId completion:(void (^)(RCGroup *))completion {
    // 代码写死 group1 是为了方便演示，实际需要判断 groupId，去应用服务器请求群组头像和群组名称来构造 RCGroup 对象
    if ([groupId isEqualToString:@"group1"]) {
        RCGroup *groupInfo = [[RCGroup alloc] initWithGroupId:groupId groupName:@"草帽儿海贼团" portraitUri:@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1597921597564&di=1e5ed913aba1d93d1d93b3a43d19b237&imgtype=0&src=http%3A%2F%2Fi2.hdslb.com%2Fbfs%2Farchive%2Fe78df34f650903d2fa5b909e3dbba655fd3b66e0.jpg"];
        completion(groupInfo);
    }
}

- (void)configCurrentUserInfo:(NSString *)userId {
    [RCIM sharedRCIM].currentUserInfo = [[RCUserInfo alloc] initWithUserId:userId name:@"路飞" portrait:@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1597918940647&di=7048f8fccf7d671aaf561d1be7363b0a&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201410%2F01%2F20141001163404_SCa32.png"];
}

@end
