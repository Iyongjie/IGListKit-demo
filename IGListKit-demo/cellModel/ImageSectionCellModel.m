//
//  ImageSectionCellModel.m
//  IGListKit-demo
//
//  Created by 李永杰 on 2019/4/30.
//  Copyright © 2019 iyongjie. All rights reserved.
//

#import "ImageSectionCellModel.h"

@implementation ImageSectionCellModel
-(instancetype)initWithImages:(NSArray *)images {
    if (self = [super init]) {
        self.images = images;
    }
    return self;
}
- (nonnull id<NSObject>)diffIdentifier {
    return self;
}

- (BOOL)isEqualToDiffableObject:(nullable ImageSectionCellModel <IGListDiffable> *)object {
    if (object == self) {
        return YES;
    } else if (![object isKindOfClass:[ImageSectionCellModel class]]) {
        return NO;
    } else {
        return [self.images isEqualToArray:((ImageSectionCellModel *)object).images];
    }
}

@end
