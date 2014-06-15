//
//  TEAFactory.m
//  Pirate Adventure
//
//  Created by Tony Angelo on 6/11/14.
//  Copyright (c) 2014 Tony Angelo. All rights reserved.
//

#import "TEAFactory.h"
#import "TEATile.h"

@implementation TEAFactory

-(NSArray *)tiles
{
	TEATile *tile1 = [[TEATile alloc] init];
	tile1.story = @"Captain, your are our leader.  Lead us!  You must kill boss Hogg.  Would you like a blunted sword to get started?";
	tile1.backgroundImage = [UIImage imageNamed:@"PirateStart.jpg"];
	TEAWeapon *bluntedSword = [[TEAWeapon alloc] init];
	bluntedSword.name = @"Blunted sword";
	bluntedSword.damage = 12;
	tile1.weapon = bluntedSword;
	tile1.actionButtonName = @"Take Sword";
	
	TEATile *tile2 = [[TEATile alloc] init];
	tile2.story = @"You have come across an armory.  Upgrade to steel armor!";
	tile2.backgroundImage = [UIImage imageNamed:@"PirateBlacksmith.jpeg"];
	TEAArmor *steelArmor = [[TEAArmor alloc] init];
	steelArmor.name = @"Steel armor";
	steelArmor.health = 8;
	tile2.armor = steelArmor;
	tile2.actionButtonName = @"Wear armor";
	
	TEATile *tile3 = [[TEATile alloc] init];
	tile3.story = @"A mysterious dock has appeared on the horizon.  Should we stop and ask for directions?";
	tile3.backgroundImage = [UIImage imageNamed:@"PirateFriendlyDock.jpg"];
	tile3.healthEffect = 12;
	tile3.actionButtonName = @"Stop at dock";
	
	TEATile *tile4 = [[TEATile alloc] init];
	tile4.story = @"You have found a parrot.  This can be used in your armor slot.  Parrots are great defenders and are fiercly loyal to their captain.";
	tile4.backgroundImage = [UIImage imageNamed:@"PirateParrot.jpg"];
	TEAArmor *parrotArmor = [[TEAArmor alloc] init];
	parrotArmor.health = 20;
	parrotArmor.name = @"Parrot";
	tile4.armor = parrotArmor;
	tile4.actionButtonName = @"Adopt parrot";
	
	TEATile *tile5 = [[TEATile alloc] init];
	tile5.story = @"You have stumbled upon a cache of pirate weapons.  Would you like to upgrade to a pistol?";
	tile5.backgroundImage = [UIImage imageNamed:@"PirateWeapons.jpeg"];
	TEAWeapon *pistolWeapon = [[TEAWeapon alloc] init];
	pistolWeapon.name = @"Pistol";
	pistolWeapon.damage = 17;
	tile5.weapon = pistolWeapon;
	tile5.actionButtonName = @"Equip pistol";
	
	TEATile *tile6 = [[TEATile alloc] init];
	tile6.story = @"You have been captured by pirates and are ordered to walk the plank.";
	tile6.backgroundImage = [UIImage imageNamed:@"PiratePlank.jpg"];
	tile6.healthEffect = -22;
	tile6.actionButtonName = @"Show no fear";
	
	TEATile *tile7 = [[TEATile alloc] init];
	tile7.story = @"You have sighted a pirate battle off the coast.  Should we intervene?";
	tile7.backgroundImage = [UIImage imageNamed:@"PirateShipBattle.jpeg"];
	tile7.healthEffect = 8;
	tile7.actionButtonName = @"Fight those scum";
	
	TEATile *tile8 = [[TEATile alloc] init];
	tile8.story = @"The legend of the deep.  The mighty kraken appears.";
	tile8.backgroundImage = [UIImage imageNamed:@"PirateOctopusAttack.jpg"];
	tile8.healthEffect = -46;
	tile8.actionButtonName = @"Abandom ship";
	
	TEATile *tile9 = [[TEATile alloc] init];
	tile9.story = @"You have stumbled upon a hidden cave of pirate treasure.";
	tile9.backgroundImage = [UIImage imageNamed:@"PirateTreasure.jpeg"];
	tile9.healthEffect = 20;
	tile9.actionButtonName = @"Take treasure";
	
	TEATile *tile10 = [[TEATile alloc] init];
	tile10.story = @"A group of pirates attempts to board your ship.";
	tile10.backgroundImage = [UIImage imageNamed:@"PirateAttack.jpg"];
	tile10.healthEffect = -15;
	tile10.actionButtonName = @"Repel invaders";
	
	TEATile *tile11 = [[TEATile alloc] init];
	tile11.story = @"In the deep of the sea many things live and many things can be found. Will the fortune bring help or ruin?";
	tile11.backgroundImage = [UIImage imageNamed:@"PirateTreasurer2.jpeg"];
	tile11.healthEffect = -7;
	tile11.actionButtonName = @"Swim deeper";
	
	TEATile *tile12 = [[TEATile alloc] init];
	tile12.story = @"Your final face-off with the fearsome pirate Boss!";
	tile12.backgroundImage = [UIImage imageNamed:@"PirateBoss.jpeg"];
	tile12.healthEffect = -15;
	tile12.actionButtonName = @"Fight!";
	
	
	NSMutableArray *firstColumn = [[NSMutableArray alloc] init];
	[firstColumn addObject:tile1];
	[firstColumn addObject:tile2];
	[firstColumn addObject:tile3];
	
	NSMutableArray *secondColumn = [[NSMutableArray alloc] init];
	[secondColumn addObject:tile4];
	[secondColumn addObject:tile5];
	[secondColumn addObject:tile6];
	
	NSMutableArray *thirdColumn = [[NSMutableArray alloc] init];
	[thirdColumn addObject:tile7];
	[thirdColumn addObject:tile8];
	[thirdColumn addObject:tile9];
	
	NSMutableArray *fourthColumn = [[NSMutableArray alloc] init];
	[fourthColumn addObject:tile10];
	[fourthColumn addObject:tile11];
	[fourthColumn addObject:tile12];
	
	NSArray *tiles = [[NSArray alloc] initWithObjects:firstColumn, secondColumn, thirdColumn, fourthColumn, nil];
	
	return tiles;
}


-(TEACharacter *) character
{
	TEACharacter *character = [[TEACharacter alloc] init];
	character.health = 100;
	
	TEAArmor *armor = [[TEAArmor alloc] init];
	armor.name = @"Cloak";
	armor.health = 5;
	character.armor = armor;
	
	TEAWeapon *weapon = [[TEAWeapon alloc] init];
	weapon.name = @"Fists";
	weapon.damage = 10;
	character.weapon = weapon;
	
	return character;
}

-(TEABoss *) boss
{
	TEABoss *boss = [[TEABoss alloc] init];
	boss.health = 65;
	
	return boss;
}
@end
