//
//  ContentCellModel.m
//  IGListKit-demo
//
//  Created by 李永杰 on 2019/4/30.
//  Copyright © 2019 iyongjie. All rights reserved.
//

#import "ContentCellModel.h"

@implementation ContentCellModel

-(instancetype)initWithContent:(NSString *)content {
    if (self = [super init]) {
        _content = content;
    }
    return self;
}

-(id<NSObject>)diffIdentifier {
    return self.content;
}
-(BOOL)isEqualToDiffableObject:(ContentCellModel<IGListDiffable>*)object {
    if (object == self) {
        return YES;
    }else if (![object isKindOfClass:[ContentCellModel class]]) {
        return NO;
    }else {
        return [self.content isEqualToString:((ContentCellModel *)object).content];
    }
}
@end
