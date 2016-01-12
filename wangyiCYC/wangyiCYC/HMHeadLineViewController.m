//
//  HMHeadLineViewController.m
//  wangyiCYC
//
//  Created by cyc on 16/1/12.
//  Copyright © 2016年 cyc. All rights reserved.
//

#import "HMHeadLineViewController.h"

@interface HMHeadLineViewController ()
/**
 *  布局参数
 */
@property (weak, nonatomic) IBOutlet UICollectionViewFlowLayout *flowLayout;

@end

@implementation HMHeadLineViewController

static NSString * const reuseIdentifier = @"HeadLine";
// 1.注册cell
//  > 通过sb注册 xib注册  通过代码注册
// 2.设置布局参数
- (void)viewDidLoad {
    [super viewDidLoad];
    
   self.collectionView.backgroundColor = [UIColor whiteColor];
    // 设置布局
    [self setupLayout];

    //[self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    
}
/**
 *  设置布局
 */
-(void)setupLayout
{
    
    // 设置布局
    self.flowLayout.itemSize = self.view.bounds.size;
    // 设置滚动方向
    self.flowLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    // 设置item之间的间隙
    self.flowLayout.minimumLineSpacing = 0;
    
    // 设置分页
    self.collectionView.pagingEnabled = YES;
    // 去除弹簧效果
    self.collectionView.bounces = NO;
    // 隐藏水平滚动条
    self.collectionView.showsHorizontalScrollIndicator = NO;

    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark <UICollectionViewDataSource>

//- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
//    return 0;
//}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 4;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
      cell.backgroundColor = [UIColor colorWithRed:((float)arc4random_uniform(256) / 255.0) green:((float)arc4random_uniform(256) / 255.0) blue:((float)arc4random_uniform(256) / 255.0) alpha:1.0];

    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
