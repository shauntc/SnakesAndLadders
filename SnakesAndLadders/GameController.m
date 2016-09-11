//
//  GameController.m
//  SnakesAndLadders
//
//  Created by Shaun Campbell on 2016-09-10.
//  Copyright © 2016 Shaun Campbell. All rights reserved.
//

#import "GameController.h"

@implementation GameController



//Private method called by GameController's init method
-(BoardTile *)generateBoardWithSideLength:(int)sideLength
{
    
    /*
    //Generates the tiles with a for loop -- UNTESTED
    BoardTile *start = [[BoardTile alloc] init];
    BoardTile *lastTile = [[BoardTile alloc] init];
    BoardTile *tileCursor = [[BoardTile alloc] initWithNextTile:nil previousTile:start snakeLink:nil ladderLink:nil
      tileNumber:1];
    
    
    for(int i = 2; i<=totalTiles; i++)
    {
    lastTile = tileCursor;
    
    tileCursor = [[BoardTile alloc] initWithNextTile:nil previousTile:lastTile snakeLink:nil ladderLink:nil tileNumber:i];
    
    lastTile.nextTile = tileCursor;
    }
    */
    
    //Generate Tiles using recursion
    int totalTiles = sideLength * sideLength;
 
    BoardTile *start = [[BoardTile alloc] initWithNextTile:nil previousTile:nil snakeLink:nil ladderLink:nil tileNumber:0];
    
    start.nextTile = [self recursiveGenerate:start count:1 max:totalTiles];
    
    
    
    
    return start;
}


//Recursive function used to generate tiles
-(BoardTile*)recursiveGenerate:(BoardTile *)tile count:(int)i max:(int)max
{
    if (i<max)
    {
       BoardTile *currentTile = [[BoardTile alloc] initWithNextTile:nil previousTile:tile snakeLink:nil ladderLink:nil tileNumber:i];
        i++;
        currentTile.nextTile = [self recursiveGenerate:currentTile count:i max:max];
        return currentTile;
    }
    else{
        return nil;
    }
}


-(void)fillSnakesAndLaddersSideLength:(int)sideLength
{
    int totalTiles = sideLength * sideLength;
    
    //approx 1/4 tiles have a snake or a ladder
    for(int i = totalTiles/2;i>0;i--)
    {
        
        //i%4 should produce values 0,1,2,3 repeatedly. Difficulty is 1=Easy, 2=Med, or 3=hard
        //Corrosponds to Easy = (1/4 snakes, 3/4 ladders)  Med = (2/4 snakes, 2/4 ladders) Hard = (3/4 snakes, 1/4 ladders
        if((i%4)>=self.difficulty)
        {
            //makes a ladder of random length at a random location
            int length = arc4random_uniform(totalTiles/3);
            int location = 1 + arc4random_uniform(totalTiles-length-1);
            if(![self returnTile:location].ladderLink && ![self returnTile:location].snakeLink)
            {
                [self returnTile:location].ladderLink = [self returnTile:(location+length)];
                self.ladders++;
            }
            else{
                i++;
            }
        }
        else
        {
            //Make a snake of random length at a random location
            int length = arc4random_uniform(totalTiles/3);
            int location = 1 + length + arc4random_uniform(totalTiles-length-1);
            if(![self returnTile:location].ladderLink && ![self returnTile:location].snakeLink)
            {
                [self returnTile:location].snakeLink = [self returnTile:(location-length)];
                self.snakes++;
            }
            else{
                i++;
            }
        }
        
        
        
    }
}



//Returns the tile with specified tile number, returns nil if tile number does not exist
-(BoardTile *)returnTile:(int)tileNumber
{
    BoardTile *tile = self.start;
    
    while(tile.tileNumber < tileNumber)
    {
        tile = tile.nextTile;
        if (tile.nextTile == nil) {
            return nil;
        }
    }
    
    return tile;
}




-(void)startGameWith:(int)players
{
    for(int i = 0; i<players;i++)
    {
        self.players = [self.players arrayByAddingObject:[[Player alloc] initWithName:[InputCollector inputForPrompt:[NSString stringWithFormat:@"What is Player %i's name",i]]]];
    }
    
    BOOL play = YES;
    
    while(play)
    {
        NSString *userInput = [InputCollector inputForPrompt:@""];
        
        
        
        
        
        
        
        
        
        
        
    }

}



- (instancetype)initWithSideLength:(int)length andDifficulty:(int)difficulty
{
    self = [super init];
    if (self) {
        _players = [[NSArray alloc] init];
        _difficulty = difficulty;
        _start = [self generateBoardWithSideLength:length];
        [self fillSnakesAndLaddersSideLength:length];
    }
    return self;
}




@end
