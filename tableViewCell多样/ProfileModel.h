//
//  ProfileModel.h
//  tableViewCell多样
//
//  Created by 强淑婷 on 2019/7/25.
//  Copyright © 2019 强淑婷. All rights reserved.
//

#import "JSONModel.h"
#import "ProfileModelProtocol.h"

NS_ASSUME_NONNULL_BEGIN
@protocol ProfileDataModel

@end

@protocol friendsModel

@end
@protocol profileAttributesModel

@end


@interface friendsModel : JSONModel

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *pictureUrl;

@end

@interface profileAttributesModel : JSONModel

@property (nonatomic, copy) NSString *key;
@property (nonatomic, copy) NSString *value;

@end

@interface ProfileDataModel : JSONModel<ProfileModelProtocol>

@property (nonatomic, copy) NSString *id;
@property (nonatomic, copy) NSString *fullName;
@property (nonatomic, copy) NSString *pictureUrl;
@property (nonatomic, copy) NSString *email;
@property (nonatomic, copy) NSString *about;
@property (nonatomic, copy) NSArray<friendsModel> *friends;
@property (nonatomic, copy) NSArray<profileAttributesModel> *profileAttributes;

@end
@interface ProfileModel : JSONModel<ProfileModelProtocol>

@property (nonatomic, strong) NSDictionary<ProfileDataModel> *data;
@property (nonatomic, copy) NSString *error;
@property (nonatomic,copy) NSString *message;
@end

NS_ASSUME_NONNULL_END
