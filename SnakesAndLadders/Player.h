//
//  Player.h
//  SnakesAndLadders
//
//  Created by Shaun Campbell on 2016-09-10.
//  Copyright © 2016 Shaun Campbell. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BoardTile.h"

@interface Player : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) BoardTile *location;

- (instancetype)initWithName:(NSString *)name;

@end
