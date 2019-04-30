//
//  ImageSectionController.m
//  IGListKit-demo
//
//  Created by 李永杰 on 2019/4/30.
//  Copyright © 2019 iyongjie. All rights reserved.
//

#import "ImageSectionController.h"
#import "ImageSectionCellModel.h"
#import "FeedModel.h"
#import "ImageSectionCell.h"

#define kImageInset     10
@interface ImageSectionController ()

@property (nonatomic, strong) FeedModel *object;

@end

@implementation ImageSectionController

-(void)didUpdateToObject:(FeedModel *)object {
    _object = object;
}
-(NSInteger)numberOfItems {
    if (!_object.images || _object.images.count == 0) {
        return 0;
    }
    return 1;
}
-(CGSize)sizeForItemAtIndex:(NSInteger)index {
    CGFloat width = (self.collectionContext.containerSize.width - 4*kImageInset) / 3.0;
    NSInteger rows = (_object.images.count - 1)/3 + 1;
    CGFloat height = width*rows + (rows + 1)*kImageInset;
    return CGSizeMake(self.collectionContext.containerSize.width, height);
}
-(UICollectionViewCell *)cellForItemAtIndex:(NSInteger)index {
    ImageSectionCell *cell = [self.collectionContext dequeueReusableCellOfClass:[ImageSectionCell class] forSectionController:self atIndex:index];
    [cell bindViewModel:[[ImageSectionCellModel alloc]initWithImages:_object.images]];
    return cell;
}
@end
