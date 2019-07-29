//
//  DoubanModel.h
//  tableViewCell多样
//
//  Created by 强淑婷 on 2019/7/29.
//  Copyright © 2019 强淑婷. All rights reserved.
//

#import "JSONModel.h"
#import "ProfileModelProtocol.h"

NS_ASSUME_NONNULL_BEGIN
@protocol DoubanMessageModel

@end

@interface DoubanMessageModel : JSONModel

@property (nonatomic, copy) NSString *name_en;
@property (nonatomic, copy) NSString *seq_id;
@property (nonatomic, copy) NSString *abbr_en;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *channel_id;

@end


@interface DoubanModel : JSONModel<ProfileModelProtocol>

@property (nonatomic, copy) NSArray<DoubanMessageModel> *channels;
@end

NS_ASSUME_NONNULL_END
