//
//  InfoCell.h
//  IGListKit-demo
//
//  Created by 李永杰 on 2019/4/30.
//  Copyright © 2019 iyongjie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InfoCellModel.h"
#import <IGListKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface InfoCell : UICollectionViewCell<IGListBindable>

@property (nonatomic, strong) UIImageView   *avatorImageView;
@property (nonatomic, strong) UILabel       *titleLabel;
@property (nonatomic, strong) UIImageView   *moreImageView;

-(void)bindViewModel:(InfoCellModel *)viewModel;

@end

NS_ASSUME_NONNULL_END
