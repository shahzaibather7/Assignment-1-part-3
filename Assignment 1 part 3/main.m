//
//  main.m
//  Assignment 1 part 3
//
//  Created by Mohammad Shahzaib Ather on 2017-07-24.
//  Copyright © 2017 Mohammad Shahzaib Ather. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//255 unit long array of characters

        char inputChars[255];
        
        printf("Input a string: ");
        fgets (inputChars , 255,stdin);
        
//print as a c string
        printf("your string is %s \n" , inputChars);
        
//convert char array to an NSString Object
        
        NSString *inputString = [NSString stringWithUTF8String:inputChars];

    
//print NSString contents
        
        NSLog(@"Input was : %@" , inputString );
        
        
        
// Makes input string LOUDER
        
        NSString *uppercaseString =  [inputString uppercaseString];
        NSLog(@"Uppercase string : %@" , uppercaseString);
        
//Makes input string lowercase
        
        NSString *lowercaseString = [inputString lowercaseString];
        NSLog(@"Lowercase string : %@" , lowercaseString);
        
//Canadianize String
        
        NSString *longerstring = [inputString stringByAppendingString:@"eh"];
        
        NSLog(@"The more canadian version of the string : %@" , longerstring);
        
//Numberize String
        
        int numberstring = [inputString intValue];
        NSLog(@"The number is : %d" , numberstring);

        
//Respond to string
        
        BOOL new = [inputString containsString:@"?" ];
        if (new ==true)
        {
            NSLog(@"I dont know");
            
            
        }
        BOOL new2 = [inputString containsString:@"!"];
        if (new2 == true)
        {
            NSLog(@"Calm Down");
        }
 
        
//Replaces values of string with spaces with "-"
        NSString *str = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
        NSLog(@"The new string is : %@ " , str);
        
    }
    return 0;
}
