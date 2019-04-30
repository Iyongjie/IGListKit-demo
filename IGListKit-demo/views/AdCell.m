//
//  AdCell.m
//  IGListKit-demo
//
//  Created by 李永杰 on 2019/4/30.
//  Copyright © 2019 iyongjie. All rights reserved.
//

#import "AdCell.h"
#import "UIView+YYAdd.h"

@implementation AdCell
-(void)bindViewModel:(AdCellModel *)viewModel {
    self.adLabel.text = viewModel.content;
}
-(instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.contentView.backgroundColor = [UIColor greenColor];
        [self.contentView addSubview:self.adLabel];
    }
    return self;
}
-(void)layoutSubviews {
    [super layoutSubviews];
    self.adLabel.frame = CGRectMake(0, 0, 100, 20);
    self.adLabel.centerY = self.height / 2.0;
    self.adLabel.centerX = self.width / 2.0;
}
-(UILabel *)adLabel {
    if (!_adLabel) {
        _adLabel = [[UILabel alloc]init];
    }
    return _adLabel;
}
@end
