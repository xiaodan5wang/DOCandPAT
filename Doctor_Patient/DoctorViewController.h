//
//  DoctorViewController.h
//  Doctor_Patient
//
//  Created by 钱骏 on 16/2/15.
//  Copyright © 2016年 钱骏. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DoctorViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *nameDoc_textfield;
@property (weak, nonatomic) IBOutlet UITextField *pswDoc_textfield;
- (IBAction)loginDoc_tap:(id)sender;
- (IBAction)registerDoc_tap:(id)sender;

@end
