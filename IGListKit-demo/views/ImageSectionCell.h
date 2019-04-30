//
//  ImageSectionCell.h
//  IGListKit-demo
//
//  Created by 李永杰 on 2019/4/30.
//  Copyright © 2019 iyongjie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <IGListBindable.h>
#import "ImageSectionCellModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface ImageSectionCell : UICollectionViewCell<IGListBindable>

@property (nonatomic, strong) UICollectionView  *collectionView;

@property (nonatomic, strong) ImageSectionCellModel *viewModel;

-(void)bindViewModel:(ImageSectionCellModel *)viewModel;
 

@end

NS_ASSUME_NONNULL_END
