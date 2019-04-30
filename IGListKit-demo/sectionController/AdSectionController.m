//
//  AdSectionController.m
//  IGListKit-demo
//
//  Created by 李永杰 on 2019/4/30.
//  Copyright © 2019 iyongjie. All rights reserved.
//

#import "AdSectionController.h"
#import "AdCell.h"
#import "AdCellModel.h"
#import "FeedModel.h"

@interface AdSectionController ()

@property (nonatomic, strong) ADModel   *object;

@end

@implementation AdSectionController

-(void)didUpdateToObject:(ADModel *)object {
    _object = object;
}

-(NSInteger)numberOfItems {
    return 1;
}
-(CGSize)sizeForItemAtIndex:(NSInteger)index {
    return CGSizeMake(self.collectionContext.containerSize.width, 100);
}


-(UICollectionViewCell *)cellForItemAtIndex:(NSInteger)index{
    AdCell *cell = [self.collectionContext dequeueReusableCellOfClass:[AdCell class] forSectionController:self atIndex:index];
    [cell bindViewModel:[[AdCellModel alloc]initWithContent:_object.adTitle]];
    return cell;
}

@end
