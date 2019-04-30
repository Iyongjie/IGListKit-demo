//
//  ImageSectionCell.m
//  IGListKit-demo
//
//  Created by 李永杰 on 2019/4/30.
//  Copyright © 2019 iyongjie. All rights reserved.
//

#import "ImageSectionCell.h"
#import "ImageCell.h"

@interface ImageSectionCell ()<UICollectionViewDelegateFlowLayout,UICollectionViewDataSource>


@end
@implementation ImageSectionCell

-(instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self.contentView addSubview:self.collectionView];
    }
    return self;
}
-(void)bindViewModel:(ImageSectionCellModel *)viewModel {
    _viewModel = viewModel;
    [self.collectionView reloadData];
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.viewModel.images.count;
}

- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    ImageCell   *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"ImageCell" forIndexPath:indexPath];
    cell.imageUrl = self.viewModel.images[indexPath.item];
    return cell;
}
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    CGFloat width = (collectionView.bounds.size.width - 40) / 3.0;
    return CGSizeMake(width, width);
}

-(UICollectionView *)collectionView {
    if (!_collectionView) {
        UICollectionViewFlowLayout *layout = [UICollectionViewFlowLayout new];
        _collectionView = [[UICollectionView alloc]initWithFrame:self.contentView.bounds collectionViewLayout:layout];
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
        _collectionView.backgroundColor = [UIColor whiteColor];
        [_collectionView registerClass:[ImageCell class] forCellWithReuseIdentifier:@"ImageCell"];
    }
    return _collectionView;
} 
@end
