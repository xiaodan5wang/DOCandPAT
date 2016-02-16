//
//  DoctorRegisterViewController.h
//  Doctor_Patient
//
//  Created by 钱骏 on 16/2/15.
//  Copyright © 2016年 钱骏. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DoctorRegisterViewController : UIViewController<UIImagePickerControllerDelegate,UINavigationControllerDelegate>
@property (weak, nonatomic) IBOutlet UITextField *nameDoc_textfield;

@property (weak, nonatomic) IBOutlet UITextField *pswDoc_textfield;
@property (weak, nonatomic) IBOutlet UITextField *specializationDoc_textfield;

@property (weak, nonatomic) IBOutlet UITextField *qualificationDoc_textfield;
@property (weak, nonatomic) IBOutlet UITextField *emailDoc_textfield;
@property (weak, nonatomic) IBOutlet UITextField *addressDoc_textfield;

@property (weak, nonatomic) IBOutlet UITextField *hospitalDoc_textfield;
@property (weak, nonatomic) IBOutlet UIButton *monPress;

@property (weak, nonatomic) IBOutlet UIButton *tuePress;
@property (weak, nonatomic) IBOutlet UIButton *wedPress;

@property (weak, nonatomic) IBOutlet UIButton *thuPress;

@property (weak, nonatomic) IBOutlet UIButton *friPress;
@property (weak, nonatomic) IBOutlet UIButton *morningSlotPress;

@property (weak, nonatomic) IBOutlet UIButton *eveningSlotPress;

- (IBAction)MonBut_press:(id)sender;
- (IBAction)TueBut_press:(id)sender;
- (IBAction)WedBut_press:(id)sender;
- (IBAction)ThuBut_press:(id)sender;
- (IBAction)FriBut_press:(id)sender;


- (IBAction)monningBut_press:(id)sender;
- (IBAction)eveningBut_press:(id)sender;

@property (weak, nonatomic) IBOutlet UIImageView *imageViewDoc;

- (IBAction)imageViewBut_Pressed:(id)sender;
- (IBAction)submit:(id)sender;

@end
