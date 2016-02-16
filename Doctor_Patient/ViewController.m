//
//  ViewController.m
//  Doctor_Patient
//
//  Created by 钱骏 on 16/2/15.
//  Copyright © 2016年 钱骏. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)customer_tap:(id)sender;
- (IBAction)doctor_tap:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)customer_tap:(id)sender {
    
    PatientViewController *patientConnect = [self.storyboard instantiateViewControllerWithIdentifier:@"PatientViewController"];
    [self.navigationController pushViewController:patientConnect animated:YES];
}

- (IBAction)doctor_tap:(id)sender {
    
    DoctorViewController *docConnect = [self.storyboard instantiateViewControllerWithIdentifier:@"DoctorViewController"];
    [self.navigationController pushViewController:docConnect animated:YES];
    
}
@end
