//
//  PhoneModel.h
//  tableViewCell多样
//
//  Created by 强淑婷 on 2019/7/26.
//  Copyright © 2019 强淑婷. All rights reserved.
//

#import "JSONModel.h"
#import "ProfileModelProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface PhoneModel : JSONModel<ProfileModelProtocol>
@property (nonatomic, copy) NSString *mts;
@property (nonatomic, copy) NSString *province;
@property (nonatomic, copy) NSString *catName;
@property (nonatomic, copy) NSString *telString;
@property (nonatomic, copy) NSString *aeraVid;
@property (nonatomic, copy) NSString *ispVid;
@property (nonatomic, copy) NSString *carrier;

@end

NS_ASSUME_NONNULL_END
