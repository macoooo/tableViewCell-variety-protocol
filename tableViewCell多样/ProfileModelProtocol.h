//
//  ProfileModelProtocol.h
//  tableViewCell多样
//
//  Created by 强淑婷 on 2019/7/26.
//  Copyright © 2019 强淑婷. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ProfileModelProtocol <NSObject>

- (NSString *)getReuseldentifier;


@end

@protocol ProfileCellProtocol <NSObject>

- (void)updateWithModel:(id)model andIndexRow:(NSInteger)row;

@end

NS_ASSUME_NONNULL_END
