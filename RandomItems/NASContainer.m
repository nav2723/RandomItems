//
//  NASContainer.m
//  RandomItems
//
//  Created by Naveen Srivastava on 2/4/15.
//  Copyright (c) 2015 NS. All rights reserved.
//

#import "NASContainer.h"

@implementation NASContainer

- (instancetype)initWithContainerName:(NSString *)containerName
                       containerItems:(NSMutableArray *)containerItems

{
    self = [super init];
    
    if(self){
        _containerName = containerName;
        _containerItems = containerItems;
        _containerValue = 0;
    }
    return self;
}

- (void)addItemToContainer:(id)newItem{
    
    if ([newItem isKindOfClass:[NASContainer class]]){
    NASContainer *itemAdd = newItem;
    _containerValue += itemAdd.containerValue;
        
    [_containerItems addObject:newItem];
        
    } else if ([newItem isKindOfClass:[NASItem class]]){
        NASItem *itemAdd = newItem;
        _containerValue += itemAdd.valueInDollars;
        
        [_containerItems addObject:newItem];

    } else {
        NSLog(@"Invalid object type: %@", _containerName);
    }
}


- (void) setContainerName:(NSString *)str{
    _containerName = str;
}
- (NSString *)containerName{
    return _containerName;
}

- (void) setContainerValue:(int)valueOfContainer{
    _containerValue = valueOfContainer;
}
- (int)containerValue{
    return _containerValue;
}

- (void) setContainerItems:(NSMutableArray *)items{
    _containerItems = items;
}
- (NSMutableArray *)containerItems {
    return _containerItems;
}

- (NSString *)description{
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"Container Name: %@ | Container Value: $%d | Container Items: %@",
                             self.containerName,
                             self.containerValue,
                             self.containerItems];
    return descriptionString;
                             
}

@end
