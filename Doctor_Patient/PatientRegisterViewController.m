//
//  PatientRegisterViewController.m
//  Doctor_Patient
//
//  Created by 钱骏 on 16/2/15.
//  Copyright © 2016年 钱骏. All rights reserved.
//

#import "PatientRegisterViewController.h"

@interface PatientRegisterViewController ()

@end

@implementation PatientRegisterViewController
@synthesize namePat_textfield,passPat_textfield,mobilePat_textfield,emailPat_textfield;

static bool nameIsGood = false;
static bool pswIsGood = false;
static bool mobIsGood = false;
static bool emailIsGood = false;


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
-(void)testValid{
    if(namePat_textfield.text.length>0){
        nameIsGood = true;
    }
    
    if(passPat_textfield.text.length>0){
        pswIsGood = true;
    }
    
    if(mobilePat_textfield.text.length>0){
        mobIsGood = true;
    }
    
    if(emailPat_textfield.text.length>0){
        emailIsGood = true;
    }
}


- (IBAction)confirmPat_tap:(id)sender {
    nameIsGood = false;
    pswIsGood = false;
    mobIsGood = false;
    emailIsGood = false;
    
    [self testValid];
    if(nameIsGood==true&&pswIsGood==true&&mobIsGood==true&&emailIsGood==true){
        NSLog(@"!!!!!!!");
        UIAlertController * sucessAlert = [UIAlertController alertControllerWithTitle:@"Success" message:@"" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction * actionOK = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            
        }];
        [sucessAlert addAction:actionOK];
        [self presentViewController:sucessAlert animated:YES completion:nil];

    }
    
    PFObject *obj = [PFObject objectWithClassName:@"Patients"];
    [obj setObject:namePat_textfield.text forKey:@"Name"];
    [obj setObject:passPat_textfield.text forKey:@"Password"];
    [obj setObject:mobilePat_textfield.text forKey:@"Mobile"];
    [obj setObject:emailPat_textfield.text forKey:@"Email"];
    [obj saveInBackground];
    
    
}
@end
