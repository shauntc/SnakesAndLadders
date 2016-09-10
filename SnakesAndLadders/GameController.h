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



@interface GameController : NSObject

//@property (nonatomic, weak) id<GameProtocol> players;
@property (nonatomic, strong) BoardTile *start;
@property (nonatomic, weak) 


-(BoardTile*)generateBoardWithSideLength:(int)sideLength;
-(void)startGame;



@end
