//
//  ViewController.m
//  IGListKit-demo
//
//  Created by 李永杰 on 2019/4/30.
//  Copyright © 2019 iyongjie. All rights reserved.
//

#import "ViewController.h"
#import <IGListKit.h>
#import "InfoSectionController.h"
#import "ContentSectionController.h"
#import "ImageSectionController.h"
#import "AdSectionController.h"
#import "YYKit.h"
#import "FeedModel.h"

@interface ViewController ()<IGListAdapterDataSource>

@property (nonatomic, strong) UICollectionView   *collectionView;
@property (nonatomic, strong) IGListAdapter      *adapter;
@property (nonatomic, strong) NSMutableArray     *objects;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSData *data = [NSData dataNamed:[NSString stringWithFormat:@"data5.json"]];
    NSArray *array = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
    for (NSDictionary *dic in array) {
        if ([dic[@"type"] integerValue] == 1) {
            [self.objects addObject:[FeedModel modelWithJSON:dic[@"data"]]];
        }else {
            [self.objects addObject:[ADModel modelWithJSON:dic[@"data"]]];
        }
    }
    [self.view addSubview:self.collectionView];
    self.adapter = [[IGListAdapter alloc]initWithUpdater:[IGListAdapterUpdater new] viewController:self];
    self.adapter.dataSource = self;
    self.adapter.collectionView = self.collectionView;
    
}
- (IGListSectionController *)listAdapter:(IGListAdapter *)listAdapter sectionControllerForObject:(id)object {
    
    if ([object isKindOfClass:[FeedModel class]]) {
        IGListStackedSectionController *stack = [[IGListStackedSectionController alloc]initWithSectionControllers:@[[InfoSectionController new],[ContentSectionController new],[ImageSectionController new]]];
        stack.inset = UIEdgeInsetsMake(5, 0, 0, 0);
        return stack;
    }
    if ([object isKindOfClass:[ADModel class]]) {
        return [AdSectionController new];
    }
    return nil;
}

- (nullable UIView *)emptyViewForListAdapter:(nonnull IGListAdapter *)listAdapter {
    UIView *view = [[UIView alloc]init];
    view.backgroundColor = [UIColor blueColor];
    return view;
}


- (nonnull NSArray<id<IGListDiffable>> *)objectsForListAdapter:(nonnull IGListAdapter *)listAdapter {
    return self.objects;
}

#pragma mark lazy
-(NSMutableArray *)objects {
    if (!_objects) {
        _objects = [NSMutableArray array];
    }
    return _objects;
}

-(UICollectionView *)collectionView {
    if (!_collectionView) {
        _collectionView = [[UICollectionView alloc]initWithFrame:self.view.frame collectionViewLayout:[UICollectionViewFlowLayout new]];
        _collectionView.backgroundColor = [UIColor whiteColor];
    }
    return _collectionView;
}

@end
