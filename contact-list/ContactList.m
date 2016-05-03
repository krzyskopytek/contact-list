//
//  ContactList.m
//  contact-list
//
//  Created by Krzysztof Kopytek on 2016-05-03.
//  Copyright © 2016 Krzysztof Kopytek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ContactList.h"
#import "Contact.h"

@implementation ContactList

- (instancetype)init {
    
    self = [super init];
    if (!self) return nil;
    
    _mutableArray = [[NSMutableArray alloc] init];
    
    return self;
}

-(void)addContact:(Contact *)newContact{
    
    [_mutableArray addObject:newContact];
    
}

-(void)printList{
    
    //Contact *contact = [[Contact alloc]init];
    //contact = _mutableArray[0];
    //NSLog(@"%@",contact.name);
    
    int i=0;
    for (Contact *eachContact in _mutableArray) {
        NSLog(@"%i: %@ email: %@", i, eachContact.name, eachContact.email);
        i++;
    }
    
}

@end