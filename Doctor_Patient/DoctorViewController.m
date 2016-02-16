//
//  DoctorViewController.m
//  Doctor_Patient
//
//  Created by 钱骏 on 16/2/15.
//  Copyright © 2016年 钱骏. All rights reserved.
//

#import "DoctorViewController.h"

@interface DoctorViewController ()

@end

@implementation DoctorViewController

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

- (IBAction)loginDoc_tap:(id)sender {
    DoctorLoginViewController *loginDocConnect = [self.storyboard instantiateViewControllerWithIdentifier:@"DoctorLoginViewController"];
    [self.navigationController pushViewController:loginDocConnect animated:YES];
    
}

- (IBAction)registerDoc_tap:(id)sender {
    
    DoctorRegisterViewController *registerDocConnect = [self.storyboard instantiateViewControllerWithIdentifier:@"DoctorRegisterViewController"];
    [self.navigationController pushViewController:registerDocConnect animated:YES];
}
@end
