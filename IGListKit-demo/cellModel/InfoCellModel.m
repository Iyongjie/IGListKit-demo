//
//  InfoCellModel.m
//  IGListKit-demo
//
//  Created by 李永杰 on 2019/4/30.
//  Copyright © 2019 iyongjie. All rights reserved.
//

#import "InfoCellModel.h"

@implementation InfoCellModel
-(instancetype)initWithUserName:(NSString *)userName avator:(NSString *)avator {
    if (self = [super init]) {
        _userName = userName;
        _avatar = avator;
    }
    return self;
}

-(id<NSObject>)diffIdentifier {
    return self.userName;
}
-(BOOL)isEqualToDiffableObject:(NSObject<IGListDiffable> *)object {
    if (object == self) {
        return YES;
    }else if (![object isKindOfClass:[InfoCellModel class]]) {
        return NO;
    }else {
        return [self.userName isEqualToString:((InfoCellModel *)object).userName];
    }
}

@end
