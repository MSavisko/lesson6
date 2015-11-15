//
//  SecondViewController.m
//  Constraint move
//
//  Created by Maksym Savisko on 11/14/15.
//  Copyright © 2015 Maksym Savisko. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *textViewHeight;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.slider.maximumValue = self.view.frame.size.height * 0.8;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)changeViewHeight:(id)sender {
    self.textViewHeight.constant = self.slider.maximumValue - self.slider.value;
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
