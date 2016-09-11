//
//  BoardTile.m
//  SnakesAndLadders
//
//  Created by Shaun Campbell on 2016-09-10.
//  Copyright © 2016 Shaun Campbell. All rights reserved.
//

#import "BoardTile.h"

@implementation BoardTile

-(instancetype)initWithNextTile:(BoardTile*)next previousTile:(BoardTile *)previous snakeLink:(BoardTile *)snake ladderLink: (BoardTile*)ladder tileNumber:(int)number
{
    self = [super init];
    if (self) {
        _nextTile = next;
        _previousTile = previous;
        _snakeLink = snake;
        _ladderLink = ladder;
        _tileNumber = number;
    }
    return self;
}

//- (instancetype)initWithNextTile:(BoardTile *)next previousTile:(BoardTile *) previoustileNumber:(int)number
//{
//    self = [self initWithNextTile:<#(BoardTile *)#> previousTile:<#(BoardTile *)#> snakeLink:<#(BoardTile *)#> ladderLink:<#(BoardTile *)#> tileNumber:<#(int)#>
//    return self;
//}

- (instancetype)init
{
    self = [self initWithNextTile:nil previousTile:nil snakeLink:nil ladderLink:nil tileNumber:0];
    return self;
}




@end
