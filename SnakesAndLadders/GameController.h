//
//  GameController.h
//  SnakesAndLadders
//
//  Created by Shaun Campbell on 2016-09-10.
//  Copyright © 2016 Shaun Campbell. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "BoardTile.h"
#import "InputCollector.h"
#import "Player.h"


@interface GameController : NSObject

@property (nonatomic, strong) NSArray *players;
@property (nonatomic, strong) BoardTile *start;

//1=Easy 2=Medium 3=Hard
@property (nonatomic, assign) int difficulty;

@property (nonatomic, assign) int snakes;
@property (nonatomic, assign) int ladders;



-(void)startGame;
- (instancetype)initWithSideLength:(int)length andDifficulty:(int)difficulty;





@end
