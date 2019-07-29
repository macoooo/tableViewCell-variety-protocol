//
//  ProfileModel.m
//  tableViewCell多样
//
//  Created by 强淑婷 on 2019/7/25.
//  Copyright © 2019 强淑婷. All rights reserved.
//

#import "ProfileModel.h"

@implementation friendsModel

+ (BOOL)propertyIsOptional:(NSString *)propertyName{
    return YES;
}
- (NSString *)getReuseldentifier {
    return @"profileCell";
}
@end
@implementation profileAttributesModel
+ (BOOL)propertyIsOptional:(NSString *)propertyName{
    return YES;
}

@end
@implementation ProfileDataModel

+ (BOOL)propertyIsOptional:(NSString *)propertyName{
    return YES;
}
- (NSString *)getReuseldentifier {
    return @"profileCell";
}
@end
@implementation ProfileModel

+ (BOOL)propertyIsOptional:(NSString *)propertyName{
    return YES;
}
- (NSString *)getReuseldentifier {
    return @"profileCell";
}
@end
