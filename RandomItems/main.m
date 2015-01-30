//
//  main.m
//  RandomItems
//
//  Created by Naveen Srivastava on 1/30/15.
//  Copyright (c) 2015 NS. All rights reserved.

//Adding Test
//

#import <Foundation/Foundation.h>
#import "NASItem.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //Create a mutable array object, store its address in items variable
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        //Send the message addObject: to the NSMutableArray pointed to by the variable items, passing a string each time
//        [items addObject:@"One"];
//        [items addObject:@"Two"];
//        [items addObject:@"Three"];
        
        //Send another message, insertObject:atIndex:, to that same array object
//        [items insertObject:@"Zero" atIndex:0];
        
        //For every item in the items array...
//        for (NSString *item in items){
//            //Log the description of item
//            NSLog(@"%@", item);
//        }
        
//        NASItem *item = [[NASItem alloc] initWithItemName:@"Red Sofa"
//                         valueInDollars:100
//                         serialNumber:@"A1B2C"];
        
        //NASItem *item = [[NASItem alloc] init];
        
        //This creates an NSString, "Red Sofa" and gives it to the NASItem
        //[item setItemName:@"Red Sofa"];
        //item.itemName = @"Red Sofa";
        
        
        //This creates an NSString, "A1B2C" and gives it to the NASItem
        //[item setSerialNumber:@"A1B2C"];
        //item.serialNumber = @"A1B2C";
        
        //This sends the value 100 to be used as the valueInDollars of this NASItem
        //[item setValueInDollars:100];
        //item.valueInDollars = 100;
        
        //NSLog(@"%@ %@ %@ %d", [item itemName], [item dateCreated],
        //                      [item serialNumber], [item valueInDollars]);
        //NSLog(@"%@ %@ %@ %d", item.itemName, item.dateCreated, item.serialNumber, item.valueInDollars);
//        NSLog(@"%@", item);
//        
//        NASItem *itemWithName = [[NASItem alloc] initWithItemName:@"Blue Sofa"];
//        NSLog(@"%@", itemWithName);
//        
//        NASItem *itemWithNoName = [[NASItem alloc] init];
//        NSLog(@"%@", itemWithNoName);
        
        //Destroy the mutable array object
        
        for (int i = 0; i < 10; i++){
            NASItem *item = [NASItem randomItem];
            [items addObject:item];
        }
        
//        id lastObj = [items lastObject];
//        [lastObj count];
        
        for (NASItem *item in items){
            NSLog(@"%@", item);
        }
//NSLog for Bronze Challenge
//NSrivastava
//        NSLog(@"%@", items[10]);
        
//Code for Silver Challenge
        NASItem *silverChallenge = [[NASItem alloc]initWithItemName:@"Silver" serialNumber:@"S1S1S"];
        NSLog(@"%@", silverChallenge);
        
        
        items = nil;
        
    }
    return 0;
}

