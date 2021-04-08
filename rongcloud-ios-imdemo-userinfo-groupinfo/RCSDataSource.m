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
        RCUserInfo *userInfo = [[RCUserInfo alloc] initWithUserId:userId name:@"索隆" portrait:@"https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=713970107,27737646&fm=26&gp=0.jpg"];
        completion(userInfo);
    }
}

- (void)getGroupInfoWithGroupId:(NSString *)groupId completion:(void (^)(RCGroup *))completion {
    // 代码写死 group1 是为了方便演示，实际需要判断 groupId，去应用服务器请求群组头像和群组名称来构造 RCGroup 对象
    if ([groupId isEqualToString:@"group1"]) {
        RCGroup *groupInfo = [[RCGroup alloc] initWithGroupId:groupId groupName:@"草帽儿海贼团" portraitUri:@"https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2204062690,4223248473&fm=26&gp=0.jpg"];
        completion(groupInfo);
    }
}

- (void)configCurrentUserInfo:(NSString *)userId {
    [RCIM sharedRCIM].currentUserInfo = [[RCUserInfo alloc] initWithUserId:userId name:@"路飞" portrait:@"https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=3513856114,2681775620&fm=26&gp=0.jpg"];
}

@end
