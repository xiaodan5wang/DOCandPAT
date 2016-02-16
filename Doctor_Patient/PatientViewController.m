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
//    __block NSArray * localarray;
//    __block NSString * localName= nameTF.text;
//    NSString * localPassword=_passwordTF.text;
//    
//    //using parse data base to fetch data
//    dispatch_queue_t queue = dispatch_queue_create("queue1", NULL);
//    
//    dispatch_async(queue, ^{
//        PFQuery *query=[PFQuery queryWithClassName:@"UserAccount"];
//        [query whereKey:@"Name" equalTo:localName];
//        localarray=[query findObjects];
//        if ([localarray count]==0) {    //check if user name can be found
//            NSLog(@"not registerred");
//            
//            dispatch_async(dispatch_get_main_queue(), ^{
//             //   [MBProgressHUD hideHUDForView:self.view animated:YES];
//                
//                UIAlertController * notRegisterAlert=[UIAlertController alertControllerWithTitle:@"Not Registerred" message:@"User email is not registerred." preferredStyle:UIAlertControllerStyleAlert];
//                UIAlertAction  *notRegisterAlertAction=[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction  _Nonnull *action){
//                }];
//                [notRegisterAlert addAction:notRegisterAlertAction];
//                [self presentViewController:notRegisterAlert animated:YES completion:nil];
//                
//            });
//            
//        }else{ //user name not found
//            dispatch_async(dispatch_get_main_queue(), ^{
//             //   [MBProgressHUD hideHUDForView:self.view animated:YES];
//                if ([[localarray[0] objectForKey:@"Password"] isEqualToString:localPassword]) {
//                    
//                    SelectSportViewController *selectVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SelectSportViewController"];
//                    [self.navigationController pushViewController:selectVC animated:YES];
//                    
//                }else{ //check password not matched
//                    UIAlertController * wrongPasswordAlert=[UIAlertController alertControllerWithTitle:@"Password Not Matched" message:@"Password is wrong." preferredStyle:UIAlertControllerStyleAlert];
//                    UIAlertAction  *wrongPasswordAlertAction=[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction   * _Nonnull action){
//                        pswPat_textfield.text=@"";
//                    }];
//                    [wrongPasswordAlert addAction:wrongPasswordAlertAction];
//                    [self presentViewController:wrongPasswordAlert animated:YES completion:nil];
//                    //            NSLog(@"Wrong password.");
//                }
//            });
//        }
//        // [UIApplication sharedApplication].networkActivityIndicatorVisible=YES;
//    });
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
    
    
    
    __block NSString *msg;
    if(mobilePat_textfield.text.length>0 && pswPat_textfield.text.length>0){
        PFQuery *query = [PFQuery queryWithClassName:@"Patients"];
        
        [query whereKey:@"Mobile" equalTo:mobilePat_textfield.text];
        NSLog(@"find it success");
        [query findObjectsInBackgroundWithBlock:^(NSArray * _Nullable objects, NSError * _Nullable error) {
            if(objects){ //this means has some elements in the nsarray;
                NSLog(@"Let's see how many data in the array%u",objects.count);
                if([[objects.lastObject valueForKey:@"Password"]isEqualToString:pswPat_textfield.text]){
                    PatientLoginViewController *patientLoginConnect = [self.storyboard instantiateViewControllerWithIdentifier:@"PatientLoginViewController"];
                    [self.navigationController pushViewController:patientLoginConnect animated:YES];
                }
                else{
                    msg = @"Wrong password";
                    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Warning" message:msg preferredStyle:UIAlertControllerStyleAlert];
                    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                        
                    }];
                    [alert addAction:ok];
                    [self presentViewController:alert animated:YES completion:nil];
                }
            }
            else{
                msg = @"account does not exit";
                UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Warning" message:msg preferredStyle:UIAlertControllerStyleAlert];
                UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                    
                }];
                [alert addAction:ok];
                [self presentViewController:alert animated:YES completion:nil];
            }
        }];
    }
    else{
        msg = @"mobile and password can not be empty";
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Warning" message:msg preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            
        }];
        [alert addAction:ok];
        [self presentViewController:alert animated:YES completion:nil];
    }
    
}

- (IBAction)registerPat_tap:(id)sender {
    
    PatientRegisterViewController *patientRegisterConnect = [self.storyboard instantiateViewControllerWithIdentifier:@"PatientRegisterViewController"];
    [self.navigationController pushViewController:patientRegisterConnect animated:YES];
    
    
}
@end
