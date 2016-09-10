//
//  BoardTile.h
//  SnakesAndLadders
//
//  Created by Shaun Campbell on 2016-09-10.
//  Copyright © 2016 Shaun Campbell. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BoardTile : NSObject

@property (nonatomic, strong) BoardTile *nextTile;
@property (nonatomic, weak) BoardTile *previousTile;
@property (nonatomic, weak) BoardTile *snakeLink;
@property (nonatomic, strong) BoardTile *ladderLink;
@property (nonatomic, assign) int tileNumber;

-(instancetype)initWithNextTile:(BoardTile*)next previousTile:(BoardTile *)previous snakeLink:(BoardTile *)snake ladderLink: (BoardTile*)ladder tileNumber:(int)number;

@end
