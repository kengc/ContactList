//
//  ContactList.h
//  ContactList
//
//  Created by Kevin Cleathero on 2017-05-30.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Contact;

@interface ContactList : NSObject

@property (nonatomic)NSMutableArray *contactList;

-(void)addToArray:(Contact *)contact;
-(void)printArray;

@end
