//
//  main.m
//  SnakesAndLadders
//
//  Created by Shaun Campbell on 2016-09-10.
//  Copyright © 2016 Shaun Campbell. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        GameController *gameController = [[GameController alloc] initWithSideLength:[InputCollector intInputForPrompt:@"Side Length"] andDifficulty:[InputCollector intInputForPrompt:@"Difficulty"]];
        
        
        [gameController startGameWith:[InputCollector intInputForPrompt:@"How Many Players?"]];
        
        NSLog(@"Test");
        
        
    
        
    
    
    
    }
    return 0;
}
