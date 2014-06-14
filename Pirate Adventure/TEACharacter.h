//
//  TEACharacter.h
//  Pirate Adventure
//
//  Created by Tony Angelo on 6/14/14.
//  Copyright (c) 2014 Tony Angelo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TEAArmor.h"
#import "TEAWeapon.h"

@interface TEACharacter : NSObject

@property (strong, nonatomic) TEAArmor *armor;
@property (strong, nonatomic) TEAWeapon *weapon;
@property(nonatomic) int damage;
@property int health;

@end
