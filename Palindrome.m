//
//  Palindrome.m
//  Palindrome
//
//  Created by rem{e}koh on 9/30/16.
//  Copyright © 2016 rem{e}koh. All rights reserved.
//

#import "Palindrome.h"

@implementation Palindrome


-(BOOL) isPalindrome:(NSString *)detectString {
    
     NSString *reverseString = @"";
    
    
    for (int i=detectString.length - 1; i>=0; i--) {
        
        char c = [detectString characterAtIndex:i];
        
        NSString *characterAsString = [NSString stringWithFormat:@"%c",c];
        
        reverseString = [reverseString stringByAppendingString:characterAsString];

    }
    
    if([detectString isEqualToString:reverseString]) {
        return YES;
    } else {
        return NO;
    }

}


@end
