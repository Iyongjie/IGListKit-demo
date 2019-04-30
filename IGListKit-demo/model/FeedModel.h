//
//  FeedModel.h
//  IGListKit-demo
//
//  Created by 李永杰 on 2019/4/30.
//  Copyright © 2019 iyongjie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IGListDiffable.h"

@interface ADModel : NSObject<IGListDiffable>
@property (nonatomic,copy) NSString *adTitle;
@property (nonatomic,copy) NSString *adUrl;
@end

@interface Comment : NSObject
@property (nonatomic,copy) NSString *person;
@property (nonatomic,copy) NSString *comment;
@end

@interface FeedModel : NSObject<IGListDiffable>

@property (nonatomic,copy) NSNumber *feedId;
@property (nonatomic,copy) NSString *avatar;
@property (nonatomic,copy) NSString *userName;
@property (nonatomic,copy) NSString *content;
@property (nonatomic,copy) NSArray<NSString *> *images;
@property (nonatomic,copy) NSNumber *favor;
@property (nonatomic,assign) BOOL isFavor;
@property (nonatomic,copy) NSArray<Comment *> *comments;

@end
