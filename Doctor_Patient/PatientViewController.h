//
//  PatientViewController.h
//  Doctor_Patient
//
//  Created by 钱骏 on 16/2/15.
//  Copyright © 2016年 钱骏. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PatientViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *pswPat_textfield;
@property (weak, nonatomic) IBOutlet UITextField *mobilePat_textfield;


- (IBAction)loginPat_tap:(id)sender;
- (IBAction)registerPat_tap:(id)sender;

@end
