//
//  NASItem.m
//  RandomItems
//
//  Created by Naveen Srivastava on 1/30/15.
//  Copyright (c) 2015 NS. All rights reserved.
//

#import "NASItem.h"

@implementation NASItem

+ (instancetype)randomItem{
    NSArray *randomAdjectiveList = @[@"Fluffy", @"Rusty", @"Shiny"];
    
    NSArray *randomNounList = @[@"Bear", @"Spork", @"Mac"];
    
    NSInteger adjectiveIndex = arc4random() % [randomAdjectiveList count];
    NSInteger nounIndex = arc4random() % [randomNounList count];
    
//    NSString *randomName = [NSString stringWithFormat:@"%@ %@",
//                            [randomAdjectiveList objectAtIndex:adjectiveIndex],
//                            [randomNounList objectAtIndex:nounIndex]];
//
    NSString *randomName = [NSString stringWithFormat:@"%@ %@",
                            randomAdjectiveList[adjectiveIndex],
                            randomNounList[nounIndex]];
    
    int randomValue = arc4random() % 100;
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                    '0' + arc4random() % 10,
                                    'A' + arc4random() % 26,
                                    '0' + arc4random() % 10,
                                    'A' + arc4random() % 26,
                                    '0' + arc4random() % 10];
    
    NASItem *newItem = [[self alloc] initWithItemName:randomName
                                       valueInDollars:randomValue
                                         serialNumber:randomSerialNumber];
    return newItem;
}

- (instancetype)initWithItemName:(NSString *)name serialNumber:(NSString *)sNumber
{
    return [self initWithItemName:name
                   valueInDollars:0
                     serialNumber:sNumber];
}

- (instancetype)initWithItemName:(NSString *)name
                  valueInDollars:(int)value
                    serialNumber:(NSString *)sNumber
{
    //Call the superclass's designated initializer
    self = [super init];
    
    //Did the superclass's designated initializer succeed?
    if (self){
        //Give the instance variables initial values
        _itemName = name;
        _serialNumber = sNumber;
        _valueInDollars = value;
        //Set _dateCreated to the current date and time
        _dateCreated = [[NSDate alloc]init];
    }
    return self;
}

- (instancetype)initWithItemName:(NSString *)name{
    return [self initWithItemName:name
                   valueInDollars:0
                     serialNumber:@""];
}

- (instancetype)init{
    return [self initWithItemName:@"Item"];
}

- (void)setItemName:(NSString *)str{
    _itemName = str;
}

- (NSString *)itemName{
    return _itemName;
}

- (void)setSerialNumber:(NSString *)str{
    _serialNumber = str;
}

- (NSString *)serialNumber{
    return _serialNumber;
}

- (void)setValueInDollars:(int)v{
    _valueInDollars = v;
}

- (int)valueInDollars{
    return _valueInDollars;
}

- (NSDate *)dateCreated{
    return _dateCreated;
}

-(NSString *)description{
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@",
                                   self.itemName, self.serialNumber, self.valueInDollars, self.dateCreated];
    
    return descriptionString;
}

@end

