//
//  ViewController.m
//  LVCustomKeyboard
//
//  Created by 刘春牢 on 15/4/15.
//  Copyright (c) 2015年 刘春牢. All rights reserved.
//

#import "ViewController.h"
#import "LVKeyboard.h"

@interface ViewController ()<LVKeyboardDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textField;

@property (nonatomic, strong) LVKeyboard *keyboard;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    LVKeyboard *keyboard = [[LVKeyboard alloc] init];
//    keyboard.delegate = self;
    
    self.keyboard = keyboard;
    self.textField.inputView = self.keyboard;
    self.keyboard.targetTextfield = self.textField;
    self.keyboard.delegate = self;
    [self.textField becomeFirstResponder];
    self.textField.clearButtonMode = UITextFieldViewModeWhileEditing;
}


- (void)keyboard:(LVKeyboard *)keyboard didClickDeleteButton:(UIButton *)deleteBtn string:(NSMutableString *)string textfield:(UITextField *)textFeild{
    textFeild.text = string;
}

- (void)keyboard:(LVKeyboard *)keyboard didClickTextButton:(UIButton *)textBtn string:(NSMutableString *)string textfield:(UITextField *)textFeild{
    textFeild.text = string;
}


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.textField resignFirstResponder];
}

@end
