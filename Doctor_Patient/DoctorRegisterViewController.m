//
//  DoctorRegisterViewController.m
//  Doctor_Patient
//
//  Created by 钱骏 on 16/2/15.
//  Copyright © 2016年 钱骏. All rights reserved.
//

#import "DoctorRegisterViewController.h"

@interface DoctorRegisterViewController ()
{
    UIAlertController *alertSpecialist;
    UIAlertController *alertQulification;
    NSData *imgData;
    NSString *avaliableDateStr;
    NSString *avaliableTimeStr;
}
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation DoctorRegisterViewController
@synthesize nameDoc_textfield,pswDoc_textfield,specializationDoc_textfield,qualificationDoc_textfield,emailDoc_textfield,addressDoc_textfield,hospitalDoc_textfield,monPress,tuePress,wedPress,thuPress,friPress,morningSlotPress,eveningSlotPress,imageViewDoc;
//making flags for registration validation including buttons for available date and time
static bool nameIsGood=false;
static bool passwordIsGood=false;
static bool specializationIsGood=false;
static bool qulificationIsGood=false;
static bool emailIsGood=false;
static bool addressIsGood=false;
static bool hospitalIsGood=false;
static bool availableDateIsGood=false;
static bool MON=false;
static bool TUE=false;
static bool WED=false;
static bool THU=false;
static bool FRI=false;
static bool availableTimeIsGood=false;
static bool MORNING=false;
static bool AFTERNOON=false;
static bool imageIsGood=false;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [imageViewDoc.layer setBorderColor:[UIColor blackColor].CGColor];
    [imageViewDoc.layer setBorderWidth:1.0];
    [_scrollView addSubview:imageViewDoc];
    
    UIButton *buttonSpecialist = [UIButton buttonWithType:UIButtonTypeCustom];
    [buttonSpecialist addTarget:self action:@selector(showSpecialist) forControlEvents:UIControlEventTouchUpInside];
    [buttonSpecialist setTitle:@"" forState:UIControlStateNormal];
    [buttonSpecialist setBackgroundColor:[UIColor redColor]];
    buttonSpecialist.frame = CGRectMake(0, 0, 183.0, 30.0);
    [specializationDoc_textfield addSubview:buttonSpecialist];
    
    UIButton *buttonQualification = [UIButton buttonWithType:UIButtonTypeCustom];
    [buttonQualification addTarget:self action:@selector(showQualification) forControlEvents:UIControlEventTouchUpInside];
    [buttonQualification setTitle:@"" forState:UIControlStateNormal];
    [buttonQualification setBackgroundColor:[UIColor yellowColor]];
    buttonQualification.frame = CGRectMake(0, 0, 183.0, 30.0);
    [qualificationDoc_textfield addSubview:buttonQualification];
   
    // Do any additional setup after loading the view.
    
     avaliableDateStr=@"";
     avaliableTimeStr=@"";
    
    //action sheet for speciliast
//    [self showQualification];
//    [self showSpecilist];
}

- (void)viewWillAppear:(BOOL)animated{

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma -mark actionsheet for specilist
//Dentist; Gynecologist; Dermatologist; Homeopathy; Ayurveda; Cardiologist
-(void)showSpecialist{
    alertSpecialist = [UIAlertController alertControllerWithTitle:@"Make ur choice" message:@"Pick up your specilist area" preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction *actionDentist = [UIAlertAction actionWithTitle:@"Dentist" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        specializationDoc_textfield.text = @"Dentist";
    }];
    UIAlertAction *actionGynecologist = [UIAlertAction actionWithTitle:@"Gynecologist" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        specializationDoc_textfield.text = @"Gynecologist";
    }];
    UIAlertAction *actionDermatologist = [UIAlertAction actionWithTitle:@"Dermatologist" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        specializationDoc_textfield.text = @"Dermatologist";
    }];
    UIAlertAction *actionHomeopathy = [UIAlertAction actionWithTitle:@"Homeopathy" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        specializationDoc_textfield.text = @"Homeopathy";
    }];
    UIAlertAction *actionAyurveda = [UIAlertAction actionWithTitle:@"Ayurveda" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        specializationDoc_textfield.text = @"Ayurveda";
    }];
    UIAlertAction *actionCardiologist = [UIAlertAction actionWithTitle:@"Cardiologist" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        specializationDoc_textfield.text = @"Cardiologist";
    }];
    [alertSpecialist addAction:actionDentist];
    [alertSpecialist addAction:actionGynecologist];
    [alertSpecialist addAction:actionDermatologist];
    [alertSpecialist addAction:actionHomeopathy];
    [alertSpecialist addAction:actionAyurveda];
    [alertSpecialist addAction:actionCardiologist];
    [self presentViewController:alertSpecialist animated:YES completion:nil];

    
}

#pragma -mark actionsheet for qualification
-(void)showQualification{
    //actionsheet for
    alertQulification=[UIAlertController alertControllerWithTitle:@"Make your choice" message:@"Pick your Education Qualification" preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction * actionelementry=[UIAlertAction actionWithTitle:@"Elementary school" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        qualificationDoc_textfield.text=@"Elementary school";
    }];
    UIAlertAction * actionsecondary=[UIAlertAction actionWithTitle:@"Secondary school" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        qualificationDoc_textfield.text=@"Secondary school";
    }];
    UIAlertAction * actionhigh=[UIAlertAction actionWithTitle:@"High school" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {       qualificationDoc_textfield.text=@"High school";
    }];
    UIAlertAction * actionbachelor=[UIAlertAction actionWithTitle:@"Bachelor" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        qualificationDoc_textfield.text=@"Bachelor";
    }];
    UIAlertAction * actionmaster=[UIAlertAction actionWithTitle:@"Master" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        qualificationDoc_textfield.text=@"Master";
    }];
    [alertQulification addAction:actionelementry];
    [alertQulification addAction:actionsecondary];
    [alertQulification addAction:actionhigh];
    [alertQulification addAction:actionbachelor];
    [alertQulification addAction:actionmaster];
    [self presentViewController:alertQulification animated:YES completion:nil];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)MonBut_press:(id)sender {
    NSString * str=@"MON,";
    if (MON!=true) {
        avaliableDateStr=[avaliableDateStr stringByAppendingString:str];
        monPress.backgroundColor=[UIColor greenColor];
        MON=true;

    }else{
        avaliableDateStr=[avaliableDateStr stringByReplacingOccurrencesOfString:str withString:@""];
        monPress.backgroundColor=[UIColor clearColor];
        MON=false;
    }
    NSLog(@"%@",avaliableDateStr);

}

- (IBAction)TueBut_press:(id)sender {
    NSString * str=@"TUE,";
    if (TUE!=true) {
        avaliableDateStr=[avaliableDateStr stringByAppendingString:str];
        tuePress.backgroundColor=[UIColor greenColor];
        TUE=true;
        
    }else{
        avaliableDateStr=[avaliableDateStr stringByReplacingOccurrencesOfString:str withString:@""];
        tuePress.backgroundColor=[UIColor clearColor];
        TUE=false;
    }
    NSLog(@"%@",avaliableDateStr);
}

- (IBAction)WedBut_press:(id)sender {
    NSString * str=@"WED,";
    if (WED!=true) {
        avaliableDateStr=[avaliableDateStr stringByAppendingString:str];
        wedPress.backgroundColor=[UIColor greenColor];
        WED=true;
        
    }else{
        avaliableDateStr=[avaliableDateStr stringByReplacingOccurrencesOfString:str withString:@""];
        wedPress.backgroundColor=[UIColor clearColor];
        WED=false;
    }
    NSLog(@"%@",avaliableDateStr);
}

- (IBAction)ThuBut_press:(id)sender {
    NSString * str=@"THU,";
    if (THU!=true) {
        avaliableDateStr=[avaliableDateStr stringByAppendingString:str];
        thuPress.backgroundColor=[UIColor greenColor];
        THU=true;
        
    }else{
        avaliableDateStr=[avaliableDateStr stringByReplacingOccurrencesOfString:str withString:@""];
        thuPress.backgroundColor=[UIColor clearColor];
        THU=false;
    }
    NSLog(@"%@",avaliableDateStr);

}

- (IBAction)FriBut_press:(id)sender {
    NSString * str=@"FRI,";
    if (FRI!=true) {
        avaliableDateStr=[avaliableDateStr stringByAppendingString:str];
        friPress.backgroundColor=[UIColor greenColor];
        FRI=true;
        
    }else{
        avaliableDateStr=[avaliableDateStr stringByReplacingOccurrencesOfString:str withString:@""];
        friPress.backgroundColor=[UIColor clearColor];
        FRI=false;
    }
    NSLog(@"%@",avaliableDateStr);
}

- (IBAction)monningBut_press:(id)sender {
    NSString * str=@"MORNING,";
    if (MORNING!=true) {
        avaliableTimeStr=[avaliableTimeStr stringByAppendingString:str];
        morningSlotPress.backgroundColor=[UIColor greenColor];
        MORNING=true;
        
    }else{
        avaliableTimeStr=[avaliableTimeStr stringByReplacingOccurrencesOfString:str withString:@""];
        morningSlotPress.backgroundColor=[UIColor clearColor];
        MORNING=false;
    }
    NSLog(@"%@",avaliableTimeStr);
}

- (IBAction)eveningBut_press:(id)sender {
    NSString * str=@"AFTERNOON,";
    if (AFTERNOON!=true) {
        avaliableTimeStr=[avaliableTimeStr stringByAppendingString:str];
        eveningSlotPress.backgroundColor=[UIColor greenColor];
        AFTERNOON=true;
        
    }else{
        avaliableTimeStr=[avaliableTimeStr stringByReplacingOccurrencesOfString:str withString:@""];
        eveningSlotPress.backgroundColor=[UIColor clearColor];
        AFTERNOON=false;
    }
    NSLog(@"%@",avaliableTimeStr);}

#pragma -mark image picker
- (IBAction)imageViewBut_Pressed:(id)sender {
    
    UIImagePickerController *picker = [[UIImagePickerController alloc]init];
    picker.delegate = self;
    picker.navigationBar.barStyle = UIBarStyleBlack;
    if([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]){
        picker.sourceType = UIImagePickerControllerSourceTypeCamera;
    }
    else{
        picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    }
    [self presentViewController:picker animated:YES completion:nil];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info{
    UIImage *img = info[UIImagePickerControllerOriginalImage];
    [imageViewDoc setImage:img];
    imgData = UIImagePNGRepresentation(img);
    [picker dismissViewControllerAnimated:YES completion:nil];
}

- (void)registrationValidation{
    if(nameDoc_textfield.text.length>0) nameIsGood=true;
    if(pswDoc_textfield.text.length>0) passwordIsGood=true;
    if(specializationDoc_textfield.text.length>0) specializationIsGood=true;
    if(qualificationDoc_textfield.text.length>0) qulificationIsGood=true;
    if(emailDoc_textfield.text.length>0) emailIsGood=true;
    if(addressDoc_textfield.text.length>0) addressIsGood=true;
    if(hospitalDoc_textfield.text.length>0) hospitalIsGood=true;
    if(avaliableDateStr.length>0) availableDateIsGood=true;
    if(avaliableTimeStr.length>0) availableTimeIsGood=true;
    if(imgData.length>0) imageIsGood=true;
}


- (IBAction)submit:(id)sender {
     nameIsGood=false;
     passwordIsGood=false;
     specializationIsGood=false;
     qulificationIsGood=false;
     emailIsGood=false;
     addressIsGood=false;
     hospitalIsGood=false;
     availableDateIsGood=false;
     availableTimeIsGood=false;
     imageIsGood=false;
    
    [self registrationValidation];
    if (nameIsGood&&passwordIsGood&&specializationIsGood&&qulificationIsGood&&emailIsGood&&addressIsGood&&hospitalIsGood&&availableDateIsGood&&availableTimeIsGood&&imageIsGood) {
        UIAlertController * sucessAlert = [UIAlertController alertControllerWithTitle:@"Success" message:@"" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction * actionOK = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            
        }];
        [sucessAlert addAction:actionOK];
        [self presentViewController:sucessAlert animated:YES completion:nil];
    }
}
@end
