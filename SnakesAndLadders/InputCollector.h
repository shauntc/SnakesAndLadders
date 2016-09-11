//
//  InputCollector.h
//  ContactList
//
//  Created by Shaun Campbell on 2016-09-06.
//  Copyright © 2016 Shaun Campbell. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputCollector : NSObject

//@property (nonatomic, strong) NSMutableArray *commandHistory;


//Returns input from the command line after prompting promptString. MAX input chars = 255
+(NSString *)inputForPrompt:(NSString *)promptString;
+(int)intInputForPrompt:(NSString *)promptString;



//-(NSString *)inputWithHistoryForPrompt:(NSString *)promptString;
//-(void) history;



@end
