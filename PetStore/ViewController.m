//
//  ViewController.m
//  PetStore
//
//  Created by Bryan Ayllon on 7/6/16.
//  Copyright © 2016 Bryan Ayllon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    
    StepperView *stepperView = [[StepperView alloc] initWithFrame:CGRectMake(0, 0, 300, 50)];
    
    stepperView.center = self.view.center;
    [self.view addSubview:stepperView];
    stepperView.delegate = self;
    
    //    Label
    self.valueLabel = [[UILabel alloc] initWithFrame:CGRectMake(203, 313, 100, 100)];
    [self.valueLabel setTextColor:[UIColor whiteColor]];
    
    [self.view addSubview:self.
     
     valueLabel];

[MBProgressHUD showHUDAddedTo:self.view animated:YES];
dispatch_async(dispatch_get_global_queue( DISPATCH_QUEUE_PRIORITY_LOW, 0), ^{
    // Do something...
    dispatch_async(dispatch_get_main_queue(), ^{
        [MBProgressHUD hideHUDForView:self.view animated:YES];
    });
});
[MBProgressHUD showHUDAddedTo:self.view animated:YES];
dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, 1.0 * NSEC_PER_SEC);
dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
    // Do something...
    [MBProgressHUD hideHUDForView:self.view animated:YES];
        });
    
   }


- (void)stepperView:(StepperView *)stepperView valueChanged:(NSInteger)value {
    
    self.valueLabel.text = [NSString stringWithFormat:@"%ld", (long)value];
}

@end