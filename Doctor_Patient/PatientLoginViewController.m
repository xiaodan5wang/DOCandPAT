//
//  PatientLoginViewController.m
//  Doctor_Patient
//
//  Created by 钱骏 on 16/2/15.
//  Copyright © 2016年 钱骏. All rights reserved.
//

#import "PatientLoginViewController.h"
#import "CustCollectionViewCell.h"
#import "PatientSelectDocTableViewController.h"
#import "AppDelegate.h"

@interface PatientLoginViewController (){
    AppDelegate * localDelegate;
}
@property (weak, nonatomic) IBOutlet UICollectionView *categoryCollectionView;

@end

@implementation PatientLoginViewController
@synthesize categoryCollectionView;
- (void)viewDidLoad {
    [super viewDidLoad];
    self.categoryCollectionView.backgroundColor=[UIColor clearColor];
    localDelegate = [[UIApplication sharedApplication]delegate];

    // Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    
    // Dispose of any resources that can be recreated.
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return localDelegate.categoryArray.count;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * identifier = @"CustCollectionViewCell";
    CustCollectionViewCell * cell = [categoryCollectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    cell.labelCategory.text = localDelegate.categoryArray[indexPath.row];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    PatientSelectDocTableViewController * psdtVC = [self.storyboard instantiateViewControllerWithIdentifier:@"PatientSelectDocTableViewController"];
    [self.navigationController pushViewController:psdtVC animated:YES];
    psdtVC.selectedCategory= localDelegate.categoryArray[indexPath.row];
}


@end
