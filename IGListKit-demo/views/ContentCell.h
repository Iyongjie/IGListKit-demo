//
//  ContentCell.h
//  IGListKit-demo
//
//  Created by 李永杰 on 2019/4/30.
//  Copyright © 2019 iyongjie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <IGListBindable.h>
#import "ContentCellModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface ContentCell : UICollectionViewCell<IGListBindable>

@property (nonatomic, strong) UILabel   *contentLabel;

-(void)bindViewModel:(ContentCellModel *)viewModel;


+(CGFloat)lineHeight;

+(CGFloat)heightWithText:(NSString *)text width:(CGFloat)width;

@end

NS_ASSUME_NONNULL_END
