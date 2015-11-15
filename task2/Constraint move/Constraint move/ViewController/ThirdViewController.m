//
//  ThirdViewController.m
//  Constraint move
//
//  Created by Maksym Savisko on 11/14/15.
//  Copyright © 2015 Maksym Savisko. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *greenBlockWidth;

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.slider.maximumValue = self.view.frame.size.width * 0.5;
    self.slider.minimumValue = self.view.frame.size.width * 0.05;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)changeGreenBlockWidth:(id)sender {
    self.greenBlockWidth.constant = self.slider.value;
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
