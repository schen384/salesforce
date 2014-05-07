//
//  XYZCreateCustomerViewController.m
//  salesforce
//
//  Created by Sicong Chen on 14-5-6.
//  Copyright (c) 2014年 Schen. All rights reserved.
//

#import "XYZCreateCustomerViewController.h"

@interface XYZCreateCustomerViewController ()
@property (weak, nonatomic) IBOutlet UITextField *firstTextField;
@property (weak, nonatomic) IBOutlet UITextField *lastTextField;
@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *donebutton;

@end

@implementation XYZCreateCustomerViewController

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if (sender != self.donebutton) return;
    if (self.firstTextField.text.length > 0 ) {
        self.customer = [[XYZCustomer alloc] init];
        self.customer.firstName = self.firstTextField.text;
        self.customer.lastName = self.lastTextField.text;
        self.customer.email = self.emailTextField.text;
    }
    
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
