//
//  CF_SupporterTableViewCell.m
//  PENG
//
//  Created by 跑酷 on 15/8/10.
//  Copyright (c) 2015年 nonato. All rights reserved.
//

#import "CF_SupporterTableViewCell.h"

@implementation CF_SupporterTableViewCell
//NO_DEFAULT_TITLE
NO_DEFAULT_PLACEHOLDER
NO_DEFAULT_TITLE_PROFILE

-(void)setcellTitle:(NSString *)title
{
    self.lbl_title.titleLabel.numberOfLines = 0;
    self.lbl_title.titleLabel.lineBreakMode = 0;
    
    [self.lbl_title setTitle:title forState:UIControlStateNormal];
    [self.lbl_title sizeThatFits:CGSizeMake(177, 30)];
}
- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(CGSize)sizeThatFits:(CGSize)size
{
    CGSize btnsize = [self.lbl_title.titleLabel sizeThatFits:CGSizeMake(177, 20)];
    btnsize.height = btnsize.height + 20;
    return CGSizeMake(size.width, btnsize.height);
}
@end