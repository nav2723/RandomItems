//
//  NASContainer.h
//  RandomItems
//
//  Created by Naveen Srivastava on 2/4/15.
//  Copyright (c) 2015 NS. All rights reserved.
//

#import "NASItem.h"

@interface NASContainer : NASItem
{
    NSString *_containerName;
    int _containerValue;
    NSMutableArray *_containerItems;
}

- (instancetype) initWithContainerName:(NSString *)containerName containerItems:(NSMutableArray *)containerItems;

- (void) addItemToContainer:(id) newItem;

- (void) setContainerName:(NSString *)str;
- (NSString *)containerName;

- (void) setContainerItems:(NSMutableArray *)items;
- (NSMutableArray *)containerItems;

- (void)setContainerValue:(int)valueOfContainer;
- (int)containerValue;
@end
