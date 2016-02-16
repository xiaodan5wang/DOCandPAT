//
//  CustCollectionViewCell.h
//  Doctor_Patient
//
//  Created by Xiaodan Wang on 2/15/16.
//  Copyright © 2016 钱骏. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustCollectionViewCell : UICollectionViewCell<UICollectionViewDataSource,UICollectionViewDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *labelCategory;


@end
