//
//  ImageSectionCellModel.h
//  IGListKit-demo
//
//  Created by 李永杰 on 2019/4/30.
//  Copyright © 2019 iyongjie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <IGListDiffable.h>

NS_ASSUME_NONNULL_BEGIN

@interface ImageSectionCellModel : NSObject<IGListDiffable>

@property (nonatomic, strong) NSArray   *images;

-(instancetype)initWithImages:(NSArray *)images;

@end

NS_ASSUME_NONNULL_END
