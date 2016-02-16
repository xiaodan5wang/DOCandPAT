//
//  PatientRegisterViewController.h
//  Doctor_Patient
//
//  Created by 钱骏 on 16/2/15.
//  Copyright © 2016年 钱骏. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PatientRegisterViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *namePat_textfield;

@property (weak, nonatomic) IBOutlet UITextField *passPat_textfield;

@property (weak, nonatomic) IBOutlet UITextField *mobilePat_textfield;
@property (weak, nonatomic) IBOutlet UITextField *emailPat_textfield;

- (IBAction)confirmPat_tap:(id)sender;


@end
