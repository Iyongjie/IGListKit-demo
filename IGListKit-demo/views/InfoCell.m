//
//  InfoCell.m
//  IGListKit-demo
//
//  Created by 李永杰 on 2019/4/30.
//  Copyright © 2019 iyongjie. All rights reserved.
//

#import "InfoCell.h"
#import "UIImageView+WebCache.h"
#import "UIView+YYAdd.h"

@implementation InfoCell
-(instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self.contentView addSubview:self.avatorImageView];
        [self.contentView addSubview:self.titleLabel];
    }
    return self;
}
-(void)layoutSubviews {
    [super layoutSubviews];
    self.avatorImageView.frame = CGRectMake(0, 0, 20, 20);
    self.avatorImageView.left = self.left + 10;
    self.avatorImageView.centerY = self.height / 2.0;
    
    self.titleLabel.frame = CGRectMake(0, 0, 100, 20);
    self.titleLabel.left = self.avatorImageView.right + 10;
    self.titleLabel.centerY = self.avatorImageView.centerY;
    
}
-(void)bindViewModel:(InfoCellModel *)viewModel {
    
    [self.avatorImageView sd_setImageWithURL:[NSURL URLWithString:viewModel.avatar] placeholderImage:[UIImage imageNamed:@""]];
    self.titleLabel.text = viewModel.userName;
}
-(UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc]init];
    }
    return _titleLabel;
}
-(UIImageView *)avatorImageView {
    if (!_avatorImageView) {
        _avatorImageView = [[UIImageView alloc]init];
        _avatorImageView.layer.cornerRadius = 12;
    }
    return _avatorImageView;
}

@end
