//
//  PhoneModel.m
//  tableViewCell多样
//
//  Created by 强淑婷 on 2019/7/26.
//  Copyright © 2019 强淑婷. All rights reserved.
//

#import "PhoneModel.h"

@implementation PhoneModel
+ (BOOL)propertyIsOptional:(NSString *)propertyName{
    return YES;
}
- (NSString *)getReuseldentifier {
    return @"phoneCell";
}
@end
