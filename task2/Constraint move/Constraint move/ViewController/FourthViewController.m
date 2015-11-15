//
//  FourthViewController.m
//  Constraint move
//
//  Created by Maksym Savisko on 11/14/15.
//  Copyright © 2015 Maksym Savisko. All rights reserved.
//

#import "FourthViewController.h"

@interface FourthViewController ()
@property (weak, nonatomic) IBOutlet UISlider *weightSlider;
@property (weak, nonatomic) IBOutlet UISlider *heightSlider;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *containerViewHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *containerViewWeight;


@end

@implementation FourthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.weightSlider.maximumValue = self.view.frame.size.width;
    self.weightSlider.minimumValue = self.view.frame.size.width * 0.4;
    self.heightSlider.maximumValue = self.view.frame.size.height * 0.7;
    self.heightSlider.minimumValue = self.view.frame.size.height * 0.3;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)changeContainerWeight:(id)sender {
    self.containerViewWeight.constant = self.weightSlider.value;
}
- (IBAction)changeContainerHeight:(id)sender {
    self.containerViewHeight.constant = self.heightSlider.value;
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
