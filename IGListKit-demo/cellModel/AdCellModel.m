//
//  AdCellModel.m
//  IGListKit-demo
//
//  Created by 李永杰 on 2019/4/30.
//  Copyright © 2019 iyongjie. All rights reserved.
//

#import "AdCellModel.h"

@implementation AdCellModel

-(instancetype)initWithContent:(NSString *)content {
    if (self = [super init]) {
        _content = content;
    }
    return self;
}
-(id<NSObject>)diffIdentifier {
    return self.content;
}
-(BOOL)isEqualToDiffableObject:(NSObject<IGListDiffable> *)object {
    if (object == self) {
        return YES;
    }else if (![object isKindOfClass:[AdCellModel class]]) {
        return NO;
    }else {
        return [self.content isEqualToString:((AdCellModel *)object).content];
    }
}

@end
