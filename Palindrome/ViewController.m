//
//  ViewController.m
//  Palindrome
//
//  Created by rem{e}koh on 9/30/16.
//  Copyright © 2016 rem{e}koh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UITextField *detectString;


@property (nonatomic, weak) IBOutlet UILabel *confirmPalindrome;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
   
}

-(IBAction) verifyPalindrome:(id) sender {
    
    Palindrome *palindrome = [[Palindrome alloc] init];
    
    BOOL result = [palindrome isPalindrome:self.detectString.text.lowercaseString];
    
    
    if(result) {
        self.confirmPalindrome.text = @"Palindrome";
    } else {
        self.confirmPalindrome.text = @"Not Palindrome";
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
