//
//  ContentCell.m
//  IGListKit-demo
//
//  Created by 李永杰 on 2019/4/30.
//  Copyright © 2019 iyongjie. All rights reserved.
//

#import "ContentCell.h"

@implementation ContentCell

-(void)bindViewModel:(ContentCellModel *)viewModel {
    _contentLabel.text = viewModel.content;
}

-(void)layoutSubviews {
    [super layoutSubviews];
    self.contentLabel.frame = self.contentView.bounds;
}
-(instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self.contentView addSubview:self.contentLabel];
    }
    return self;
}

+(CGFloat)lineHeight{
    UIFont *font = [UIFont systemFontOfSize:16];
    return font.lineHeight + font.ascender + font.descender;
}

+(CGFloat)heightWithText:(NSString *)text width:(CGFloat)width{
    UIFont *font = [UIFont systemFontOfSize:16];
    CGSize size = CGSizeMake(width - 20, CGFLOAT_MAX);
    CGRect rect = [text boundingRectWithSize:size options:NSStringDrawingUsesFontLeading |NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:font} context:nil];
    return ceil(rect.size.height) + font.ascender + font.descender;
}
-(UILabel *)contentLabel {
    if (!_contentLabel) {
        _contentLabel = [[UILabel alloc]init];
        _contentLabel.numberOfLines = 0;
    }
    return _contentLabel;
}
@end
