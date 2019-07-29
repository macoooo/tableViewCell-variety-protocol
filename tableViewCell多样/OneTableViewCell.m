//
//  OneTableViewCell.m
//  tableViewCell多样
//
//  Created by 强淑婷 on 2019/7/26.
//  Copyright © 2019 强淑婷. All rights reserved.
//

#import "OneTableViewCell.h"
#import "ProfileModel.h"

@implementation OneTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.leftLabel = [[UILabel alloc] init];
        [self.contentView addSubview:_leftLabel];
        
        self.rightLabel = [[UILabel alloc] init];
        [self.contentView addSubview:_rightLabel];
    }
    return self;
}
- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.leftLabel.frame = CGRectMake(5, 5, 150, 50);
    self.leftLabel.textColor = [UIColor blackColor];
    
    self.rightLabel.frame = CGRectMake(self.frame.size.width - 200, 5, 180, 50);
    self.rightLabel.textAlignment = NSTextAlignmentRight;
    self.rightLabel.textColor = [UIColor blackColor];
}
- (void)updateWithModel:(id)model andIndexRow:(NSInteger)row{
    
    NSArray *attributesArray = [model friends];
    self.leftLabel.text = [attributesArray[row] name];
    self.rightLabel.text = [attributesArray[row] pictureUrl];
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
