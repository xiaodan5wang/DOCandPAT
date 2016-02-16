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
@synthesize nameDoc_textfield,pswDoc_textfield;

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

    
    __block NSString *msg;
    if(nameDoc_textfield.text.length>0 && pswDoc_textfield.text.length>0){
        PFQuery *query = [PFQuery queryWithClassName:@"Doctors"];
        
        [query whereKey:@"Mobile" equalTo:nameDoc_textfield.text];
        NSLog(@"find it success");
        [query findObjectsInBackgroundWithBlock:^(NSArray * _Nullable objects, NSError * _Nullable error) {
            if(objects){ //this means has some elements in the nsarray;
                NSLog(@"Let's see how many data in the array%u",objects.count);
                if([[objects.lastObject valueForKey:@"Password"]isEqualToString:pswDoc_textfield.text]){
                    DoctorLoginViewController *loginDocConnect = [self.storyboard instantiateViewControllerWithIdentifier:@"DoctorLoginViewController"];
                    [self.navigationController pushViewController:loginDocConnect animated:YES];
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

- (IBAction)registerDoc_tap:(id)sender {
    DoctorRegisterViewController *registerDocConnect = [self.storyboard instantiateViewControllerWithIdentifier:@"DoctorRegisterViewController"];
    [self.navigationController pushViewController:registerDocConnect animated:YES];
}
@end
