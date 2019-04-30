//
//  AdCell.h
//  IGListKit-demo
//
//  Created by 李永杰 on 2019/4/30.
//  Copyright © 2019 iyongjie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <IGListBindable.h>
#import "AdCellModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface AdCell : UICollectionViewCell <IGListBindable>

@property (nonatomic, strong) UILabel   *adLabel;

-(void)bindViewModel:(AdCellModel *)viewModel;
@end

NS_ASSUME_NONNULL_END
