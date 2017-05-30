//
//  InputCollector.m
//  ContactList
//
//  Created by Kevin Cleathero on 2017-05-30.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString{
    
    //char inputChars[255];
    
//    NSLog(@"The menu: What would you like do next? new - Create a new contact list - List all contacts quit - Exit Application ");
//    
//    fgets(inputChars, 255, stdin);
//    
//    //NSLog(@"your input is: %s", inputChars);
//    
//    NSString *inputString = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
//    
//    NSCharacterSet *characterSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
//    
//    NSString *trimmed = [inputString stringByTrimmingCharactersInSet:characterSet];
    
    return promptString;

}

@end
