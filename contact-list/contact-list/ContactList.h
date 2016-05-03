//
//  ContactList.h
//  contact-list
//
//  Created by Krzysztof Kopytek on 2016-05-03.
//  Copyright © 2016 Krzysztof Kopytek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property NSMutableArray *mutableArray;

-(void)addContact:(Contact *)newContact;

-(void)printList;

@end
