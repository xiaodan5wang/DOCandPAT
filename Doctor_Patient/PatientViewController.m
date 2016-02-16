//
//  PatientViewController.m
//  Doctor_Patient
//
//  Created by 钱骏 on 16/2/15.
//  Copyright © 2016年 钱骏. All rights reserved.
//

#import "PatientViewController.h"

@interface PatientViewController ()
{
    //three uialertcontroller;
    UIAlertController *alertspecialization;
    UIAlertController *alertqulification;
    UIAlertController *alertAvailbleTime;
    
}
@end

@implementation PatientViewController
@synthesize pswPat_textfield,mobilePat_textfield;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)loginPat_tap:(id)sender {
    
    PatientLoginViewController *patientLoginConnect = [self.storyboard instantiateViewControllerWithIdentifier:@"PatientLoginViewController"];
    [self.navigationController pushViewController:patientLoginConnect animated:YES];
    
    
}

- (IBAction)registerPat_tap:(id)sender {
    
    PatientRegisterViewController *patientRegisterConnect = [self.storyboard instantiateViewControllerWithIdentifier:@"PatientRegisterViewController"];
    [self.navigationController pushViewController:patientRegisterConnect animated:YES];
    
    
}
@end
