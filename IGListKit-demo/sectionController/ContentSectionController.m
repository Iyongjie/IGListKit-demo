//
//  ContentSectionController.m
//  IGListKit-demo
//
//  Created by 李永杰 on 2019/4/30.
//  Copyright © 2019 iyongjie. All rights reserved.
//

#import "ContentSectionController.h"
#import "ContentCell.h"
#import "ContentCellModel.h"
#import "FeedModel.h"

@interface ContentSectionController ()

@property (nonatomic, strong) FeedModel *object;

@property (nonatomic, assign) BOOL      isExpand;

@end

@implementation ContentSectionController

-(void)didUpdateToObject:(id)object {
    _object = object;
}
-(NSInteger)numberOfItems {
    return self.object.content != nil ? 1 : 0;
}
-(CGSize)sizeForItemAtIndex:(NSInteger)index {
    CGFloat width = self.collectionContext.containerSize.width;
    CGFloat height = _isExpand ? [ContentCell heightWithText:_object.content width:width] : [ContentCell lineHeight];
    return CGSizeMake(width, height);
}
-(UICollectionViewCell *)cellForItemAtIndex:(NSInteger)index {
    ContentCell *cell = [self.collectionContext dequeueReusableCellOfClass:[ContentCell class] forSectionController:self atIndex:index];
    [cell bindViewModel:[[ContentCellModel alloc]initWithContent:_object.content]];
    return cell;
}
-(void)didSelectItemAtIndex:(NSInteger)index {
    _isExpand = !_isExpand;
    [UIView animateWithDuration:0.5 delay:0 usingSpringWithDamping:0.4 initialSpringVelocity:0.6 options:0 animations:^{
        [self.collectionContext invalidateLayoutForSectionController:self completion:nil];
    } completion:nil];
}
@end
