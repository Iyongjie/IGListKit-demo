//
//  FeedModel.m
//  IGListKit-demo
//
//  Created by 李永杰 on 2019/4/30.
//  Copyright © 2019 iyongjie. All rights reserved.
//

#import "FeedModel.h"

@implementation ADModel
-(id<NSObject>)diffIdentifier{
    return self;
}

-(BOOL)isEqualToDiffableObject:(id<IGListDiffable>)object{
    return [self isEqual:object];
}
@end

@implementation Comment

@end

@implementation FeedModel

+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{@"comments":[Comment class]
             };
}

-(id<NSObject>)diffIdentifier{
    return self;
}

-(BOOL)isEqualToDiffableObject:(id<IGListDiffable>)object{
    return [self isEqual:object];
}
@end
