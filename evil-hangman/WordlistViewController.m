//
//  WordlistViewController.m
//  evil-hangman
//
//  Created by ThaoLT on 2/18/17.
//  Copyright © 2017 tmtuan. All rights reserved.
//

#import "WordlistViewController.h"

@interface WordlistViewController ()

@end

@implementation WordlistViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"HERE");
    // Load word plist file into dictionary
    NSString *file = [[NSBundle mainBundle] pathForResource:@"words" ofType:@"plist"];
    NSArray *wordlist =  [[[NSArray alloc] initWithContentsOfFile:file] sortedArrayUsingSelector:@selector(compare:)];
    
    
    // iterate over values in the word array
    
    for (NSString *word in wordlist) {
        
    }
    NSLog(@"THERE");
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

@end
