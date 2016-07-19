//
//  ViewController.m
//  DatePickerDemo
//
//  Created by Apple on 16/3/8.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "ViewController.h"
#import "SYDatePicker.h"

@interface ViewController ()<SYDatePickerDelegate>

@property (weak, nonatomic) IBOutlet UILabel *timeLabel;

@property SYDatePicker *picker;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)pop:(id)sender {
    
    //由于_picker是成员变量,因此注意此处一定要判断self.picker是否存在,否则将会出现重复创建的情况
    if (!self.picker) {
         self.picker = [[SYDatePicker alloc] init];
    }
    
    [self.picker showInView:self.view withFrame:CGRectMake(0, self.view.frame.size.height - 300, self.view.frame.size.width, 300) andDatePickerMode:UIDatePickerModeTime];
    self.picker.delegate = self;
}

- (void)picker:(UIDatePicker *)picker ValueChanged:(NSDate *)date{
    NSDateFormatter *fm = [[NSDateFormatter alloc] init];
    fm.dateFormat = @"所选择的时间是HH:mm";
    self.timeLabel.text = [fm stringFromDate:date];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.picker dismiss];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
