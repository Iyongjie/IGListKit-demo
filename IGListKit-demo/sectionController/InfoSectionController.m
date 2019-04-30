//
//  InfoSectionController.m
//  IGListKit-demo
//
//  Created by 李永杰 on 2019/4/30.
//  Copyright © 2019 iyongjie. All rights reserved.
//

#import "InfoSectionController.h"
#import "InfoCell.h"
#import "InfoCellModel.h"
#import "FeedModel.h"

@interface InfoSectionController ()

@property (nonatomic, strong) FeedModel *object;

@end

@implementation InfoSectionController
-(void)didUpdateToObject:(id)object {
    _object = object;
}

-(NSInteger)numberOfItems {
    return 1;
}
-(CGSize)sizeForItemAtIndex:(NSInteger)index {
    return CGSizeMake(self.collectionContext.containerSize.width, 25);
}
-(UICollectionViewCell *)cellForItemAtIndex:(NSInteger)index {
    InfoCell *cell = [self.collectionContext dequeueReusableCellOfClass:[InfoCell class] forSectionController:self atIndex:index];
    [cell bindViewModel:[[InfoCellModel alloc]initWithUserName:_object.userName avator:_object.avatar]];
    return cell;
}

@end
