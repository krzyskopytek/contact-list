//
//  main.m
//  contact-list
//
//  Created by Krzysztof Kopytek on 2016-05-03.
//  Copyright © 2016 Krzysztof Kopytek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
      
        ContactList *contactList = [[ContactList alloc]init];
        
        //promptString
        NSString *promptString =
            @"What would you like do next? \n \
            \tnew - Create a new contact \n \
            \tlist - List all contacts \n \
            \tquit - Exit Application\n";
        
        InputCollector *inputCollector = [[InputCollector alloc] init];
        
        do {
            NSString *inputString = [inputCollector inputForPrompt:promptString];
            
            if([inputString isEqualToString:@"new"]){
                
                Contact *contactNew = [[Contact alloc] init];
                
                contactNew.name = [inputCollector inputForPrompt: @"Enter new contact name"];
                contactNew.email = [inputCollector inputForPrompt: @"Enter new contact email"];
                
                [contactList addContact:contactNew];
                
            }
            else if([inputString isEqualToString:@"list"]){
                [contactList printList];
            }
            else if([inputString isEqualToString:@"quit"]){
                NSLog(@"Bye bye :)");
                break;
            }
            else NSLog(@"Unknow command. Try again.");
            
        } while (true);
        
        
    }
    return 0;
}
