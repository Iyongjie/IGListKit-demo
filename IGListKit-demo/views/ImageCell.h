//
//  ImageCell.h
//  IGListKit-demo
//
//  Created by 李永杰 on 2019/4/30.
//  Copyright © 2019 iyongjie. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ImageCell : UICollectionViewCell
@property (nonatomic, strong) UIImageView   *imageView;
@property (nonatomic, copy)   NSString      *imageUrl;
@end

NS_ASSUME_NONNULL_END
