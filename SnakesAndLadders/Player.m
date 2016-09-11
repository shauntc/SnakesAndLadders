//
//  Player.m
//  SnakesAndLadders
//
//  Created by Shaun Campbell on 2016-09-10.
//  Copyright © 2016 Shaun Campbell. All rights reserved.
//

#import "Player.h"

@implementation Player


- (instancetype)initWithName:(NSString *)name
{
    self = [super init];
    if (self) {
        _name = name;
        _location = nil;
    }
    return self;
}

@end
