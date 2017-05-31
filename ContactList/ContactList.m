//
//  ContactList.m
//  ContactList
//
//  Created by Kevin Cleathero on 2017-05-30.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "ContactList.h"
#import "Contact.h"

@implementation ContactList

-(void)printArray{
    int count = 0;
//    for(int i = 0; i < _contactList.count; i++){
//        NSLog(@"%d < %@ > ", i, _contactList[i]);
//    }
    
    for (Contact *element in self.contactList){
        NSLog(@"#%d < %@ > ", count, element.name);
        count++;
    }
    
    
}

-(void)addToArray:(Contact *)contact{
    if(_contactList){
        [_contactList addObject:contact];
    }
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _contactList = [[NSMutableArray alloc] init];
    }
    return self;
}

@end
