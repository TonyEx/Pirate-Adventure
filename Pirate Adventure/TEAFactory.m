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
	tile1.story = @"story 1";
	
	TEATile *tile2 = [[TEATile alloc] init];
	tile2.story = @"story 2";
	
	TEATile *tile3 = [[TEATile alloc] init];
	tile3.story = @"story 3";
	
	TEATile *tile4 = [[TEATile alloc] init];
	tile4.story = @"story 4";
	
	TEATile *tile5 = [[TEATile alloc] init];
	tile5.story = @"story 5";
	
	TEATile *tile6 = [[TEATile alloc] init];
	tile6.story = @"story 6";
	
	TEATile *tile7 = [[TEATile alloc] init];
	tile7.story = @"story 7";
	
	TEATile *tile8 = [[TEATile alloc] init];
	tile8.story = @"story 8";
	
	TEATile *tile9 = [[TEATile alloc] init];
	tile9.story = @"story 9";
	
	TEATile *tile10 = [[TEATile alloc] init];
	tile10.story = @"story 10";
	
	TEATile *tile11 = [[TEATile alloc] init];
	tile11.story = @"story 11";
	
	TEATile *tile12 = [[TEATile alloc] init];
	tile12.story = @"story 12";
	
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

@end
