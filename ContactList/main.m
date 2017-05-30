//
//  main.m
//  ContactList
//
//  Created by Kevin Cleathero on 2017-05-30.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        If you restart your app, all the contacts will be lost
//        Commit and push your progress on a regular basis
//        Seed some fake data in so you don’t have to create contacts each time you restart the app
        
//  When the app starts up it should initially display a menu with options. It then prompts them for input. At this stage, it can just ignore the input and reprint the main menu. In the next task, we will start using the input.
        
//        The menu: What would you like do next? new - Create a new contact list - List all contacts quit - Exit Application > _
        char inputChars[255];
        BOOL loop = YES;
//        typedef enum{
//            quit,
//            new,
//            list,
//            show,
//            find
//        } Choices;
        
        InputCollector *collect = [[InputCollector alloc] init];
        
        do{

        NSLog(@"\n\nThe menu: What would you like do next? \nnew - Create a new contact \nlist - List all contacts \nquit - Exit Application \n");
        
        fgets(inputChars, 255, stdin);
        
        //NSLog(@"your input is: %s", inputChars);
        
        NSString *inputString = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
            
        NSString *userInput = [collect inputForPrompt:inputString];
            
        if([userInput isEqualToString:@"quit"]){
            loop = NO;
            NSLog(@"bye..");
        }
        
        if([userInput isEqualToString:@"new"]){
            loop = NO;
            NSLog(@"bye..");
        }
//            
//        if (collect.loop){
//            NSLog(@"user wrote %@", userInput);
//        } else {
//            loop = NO;
//        }
            
    }while(loop);
        
    }
    return 0;
}
