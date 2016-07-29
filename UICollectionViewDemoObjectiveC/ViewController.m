//
//  ViewController.m
//  UICollectionViewDemoObjectiveC
//
//  Created by Hardik Trivedi on 29/07/2016.
//  Copyright © 2016 iHart. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UICollectionViewDelegate, UICollectionViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 10;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    UILabel *lbl = [[UILabel alloc] initWithFrame:[[cell contentView] frame]];
    [lbl setTextColor:[UIColor whiteColor]];
    [lbl setTextAlignment:NSTextAlignmentCenter];
    [lbl setText:[NSString stringWithFormat:@"Cell : %ld", indexPath.row + 1]];
    
    [cell addSubview:lbl];
    
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Cell Tap" message:[NSString stringWithFormat:@"Cell : %ld selected", indexPath.row + 1] preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"Okay" style:UIAlertActionStyleDefault handler:nil];
    [alert addAction:okAction];
    
    [self presentViewController:alert animated:YES completion:nil];
}

@end
