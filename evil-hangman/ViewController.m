//
//  ViewController.m
//  evil-hangman
//
//  Created by ThaoLT on 2/18/17.
//  Copyright © 2017 tmtuan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize label=_label;
@synthesize textfield=_textfield;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // hide text field by default
    self.textfield.hidden = YES;
    
    // let this viewcontrol be the textfield delegate
    self.textfield.delegate = self;
    
    // display keyboard
    [self.textfield becomeFirstResponder];
    
    
}

// MARK: Textfield Delegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    
    //append newly typed letter to display label
    self.label.text = [NSString stringWithFormat:@"%@%@", self.label.text, string];
   
    // allow textfield change to apply
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
