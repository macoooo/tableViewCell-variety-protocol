//
//  TwoTableViewCell.m
//  tableViewCell多样
//
//  Created by 强淑婷 on 2019/7/26.
//  Copyright © 2019 强淑婷. All rights reserved.
//

#import "TwoTableViewCell.h"
#import "DoubanModel.h"

@implementation TwoTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.titleLabel = [[UILabel alloc] init];
        [self.contentView addSubview:_titleLabel];
        
        self.leftImageView = [[UIImageView alloc] init];
        [self.contentView addSubview:_leftImageView];
    }
    return self;
}
- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.titleLabel.font = [UIFont systemFontOfSize:24];
    self.titleLabel.frame = CGRectMake(70, 10, 100, 60);
    
    self.leftImageView.frame = CGRectMake(5, 10, 50, 50);
    self.leftImageView.image = [UIImage imageNamed:@"add"];
}
- (void)updateWithModel:(id)model andIndexRow:(NSInteger)row{
    NSArray *doubanModel = [model channels];
    self.titleLabel.text = [doubanModel[row]  name];
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
