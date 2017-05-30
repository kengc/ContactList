//
//  InputCollector.h
//  ContactList
//
//  Created by Kevin Cleathero on 2017-05-30.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputCollector : NSObject


//-(void)switchTest:(enum choices)testColor;
-(NSString *)inputForPrompt:(NSString *)promptString;
-(NSString *)newContactInput;
//-(NSString *)inputForPrompt;

@end
