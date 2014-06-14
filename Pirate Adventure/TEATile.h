//
//  TEATile.h
//  Pirate Adventure
//
//  Created by Tony Angelo on 6/11/14.
//  Copyright (c) 2014 Tony Angelo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TEAWeapon.h"
#import "TEAArmor.h"

@interface TEATile : NSObject

@property(strong, nonatomic) NSString *story;
@property(strong, nonatomic) UIImage *backgroundImage;
@property (strong, nonatomic) NSString *actionButtonName;
@property(strong, nonatomic) TEAWeapon *weapon;
@property(strong, nonatomic) TEAArmor *armor;
@property(nonatomic) int healthEffect;

@end
