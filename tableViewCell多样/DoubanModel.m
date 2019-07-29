//
//  DoubanModel.m
//  tableViewCell多样
//
//  Created by 强淑婷 on 2019/7/29.
//  Copyright © 2019 强淑婷. All rights reserved.
//

#import "DoubanModel.h"


@implementation DoubanMessageModel
+ (BOOL)propertyIsOptional:(NSString *)propertyName{
    return YES;
}


@end
@implementation DoubanModel

+ (BOOL)propertyIsOptional:(NSString *)propertyName{
    return YES;
}
- (NSString *)getReuseldentifier {
    return @"doubanCell";
}
@end
