//
//  NASItem.h
//  RandomItems
//
//  Created by Naveen Srivastava on 1/30/15.
//  Copyright (c) 2015 NS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NASItem : NSObject{
    NSString *_itemName;
    NSString *_serialNumber;
    int _valueInDollars;
    NSDate *_dateCreated;
}

+ (instancetype)randomItem;

-(instancetype)initWithItemName:(NSString *)name
                   serialNumber:(NSString *)sNumber;

//Designated initializer for NASItem
- (instancetype)initWithItemName:(NSString *)name
                  valueInDollars:(int)value
                    serialNumber:(NSString *)sNumber;

- (instancetype)initWithItemName:(NSString *)name;

- (void)setItemName:(NSString *)str;
- (NSString *)itemName;

- (void)setSerialNumber:(NSString *)str;
- (NSString *)serialNumber;

- (void)setValueInDollars:(int)v;
- (int)valueInDollars;

- (NSDate *)dateCreated;
@end
