//
//  InputCollector.m
//  ContactList
//
//  Created by Kevin Cleathero on 2017-05-30.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

//- (void) switchTest:(enum Choices)choices {
//    if(testColor == RED) {
//        NSLog(@"Red selected");
//    }

-(NSString *)inputForPrompt:(NSString *)promptString{
    
    NSCharacterSet *characterSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    
    NSString *trimmed = [promptString stringByTrimmingCharactersInSet:characterSet];
    
    NSString *lowered = [trimmed lowercaseString];
    
    return lowered;

}

-(NSString *)newContactInput;{

    char nameChars[255];
    char emailChars[255];

    NSLog(@"\n\nWhat is your full name? \n");

    fgets(nameChars, 255, stdin);

    NSString *fullName = [NSString stringWithCString:nameChars encoding:NSUTF8StringEncoding];
    NSCharacterSet *nameSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSString *fullNameTrimmed = [fullName stringByTrimmingCharactersInSet:nameSet];
    NSLog(@"your input is: %@", fullNameTrimmed);

    NSLog(@"\n\nWhat is your email? \n");

    fgets(emailChars, 255, stdin);
    NSString *email = [NSString stringWithCString:emailChars encoding:NSUTF8StringEncoding];
    NSCharacterSet *emailSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSString *emailTrimmed = [email stringByTrimmingCharactersInSet:emailSet];
    NSLog(@"your input is: %@", emailTrimmed);

    return @"";
}


@end
