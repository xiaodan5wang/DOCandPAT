//
//  PatientSelectDocTableViewController.m
//  Doctor_Patient
//
//  Created by Xiaodan Wang on 2/16/16.
//  Copyright © 2016 钱骏. All rights reserved.
//

#import "PatientSelectDocTableViewController.h"

@interface PatientSelectDocTableViewController ()

@end

@implementation PatientSelectDocTableViewController
@synthesize selectedCategory;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=selectedCategory;
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

@end
