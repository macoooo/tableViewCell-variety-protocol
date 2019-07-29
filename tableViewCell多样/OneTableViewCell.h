//
//  OneTableViewCell.h
//  tableViewCell多样
//
//  Created by 强淑婷 on 2019/7/26.
//  Copyright © 2019 强淑婷. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ProfileModelProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface OneTableViewCell : UITableViewCell<ProfileCellProtocol>

@property (nonatomic, strong) UILabel *leftLabel;
@property (nonatomic, strong) UILabel *rightLabel;

@end

NS_ASSUME_NONNULL_END
