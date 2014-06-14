//
//  TEAFactory.h
//  Pirate Adventure
//
//  Created by Tony Angelo on 6/11/14.
//  Copyright (c) 2014 Tony Angelo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TEACharacter.h"
#import "TEABoss.h"

@interface TEAFactory : NSObject

-(NSArray *)tiles;

-(TEACharacter *) character;

-(TEABoss *) boss;

@end
