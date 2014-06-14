//
//  TEAViewController.m
//  Pirate Adventure
//
//  Created by Tony Angelo on 6/9/14.
//  Copyright (c) 2014 Tony Angelo. All rights reserved.
//

#import "TEAViewController.h"
#import "TEAFactory.h"
#import "TEATile.h"
#import "TEABoss.h"

@interface TEAViewController ()


@end

@implementation TEAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	// Do any additional setup after loading the view, typically from a nib.
	NSLog(@"Entering viewDidLoad");
	
	TEAFactory *factory = [[TEAFactory alloc] init];
	self.tiles = [factory tiles];
	self.character = [factory character];
	self.boss = [factory boss];
	
	[self updateCharacterStatsForArmor:nil withWeapons:nil withHealthEffect:0];
	
	self.currentPoint = CGPointMake(0, 0);
	NSLog(@"%f, %f", self.currentPoint.x, self.currentPoint.y);
	
	[self updateTile];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
	NSLog(@"Entering didReceiveMemoryWarning");
}

#pragma mark - IBAction

- (IBAction)actionButtonPressed:(UIButton *)sender {
	NSLog(@"Entering actionButtonPressed");
	
	TEATile *tile = [[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
	
	if (tile.healthEffect == -15)
		self.boss.health = self.boss.health - self.character.damage;
	
	[self updateCharacterStatsForArmor:tile.armor withWeapons:tile.weapon withHealthEffect:tile.healthEffect];
	[self updateTile];
	
	if (self.character.health <= 0)
	{
		UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Death Message" message:@"You have died.  Please restart the game" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
		
		[alertView show];
	}
	else if (self.boss.health <= 0) {
		UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Victory Message" message:@"You have defeated the evil pirate boss.... Hogg" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
		
		[alertView show];
		
	}
}


- (IBAction)northButtonPressed:(UIButton *)sender {
	NSLog(@"Entering northButtonPressed");
	
	self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y + 1);
	[self updateTile];
}


- (IBAction)westButtonPressed:(UIButton *)sender {
	NSLog(@"Entering westButtonPressed");
	self.currentPoint = CGPointMake(self.currentPoint.x - 1, self.currentPoint.y);
	[self updateTile];
}
									
									
- (IBAction)southButtonPressed:(UIButton *)sender {
	NSLog(@"Entering southButtonPressed");
	self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y - 1);
	[self updateTile];
}

									
- (IBAction)eastButtonPressed:(UIButton *)sender {
	NSLog(@"Entering eastButtonPressed");
	self.currentPoint = CGPointMake(self.currentPoint.x + 1, self.currentPoint.y);
	[self updateTile];
}

- (IBAction)restartButtonPressed:(UIButton *)sender {
	self.character = nil;
	self.boss = nil;
	[self viewDidLoad];
}


#pragma mark - help methods

-(void)updateTile
{
	NSLog(@"Entering updateTile");
	
	TEATile *tileModel = [[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
	
	NSLog(@"%f, %f", self.currentPoint.x, self.currentPoint.y);
	
	self.storyLabel.text = tileModel.story;
	self.backgroundImageView.image = tileModel.backgroundImage;
	
	self.healthLabel.text = [NSString stringWithFormat:@"%i", self.character.health];
	self.damageLabel.text = [NSString stringWithFormat:@"%i", self.character.damage];
	self.armorLabel.text =  self.character.armor.name;
	self.weaponLabel.text = self.character.weapon.name;
	
	[self.actionButton setTitle:tileModel.actionButtonName forState:UIControlStateNormal];
	
	[self updateButtons];
}


-(void)updateButtons
{
	NSLog(@"Entering updateButtons");
	
	self.westButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x - 1, self.currentPoint.y)];
	self.eastButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x + 1, self.currentPoint.y)];
	self.northButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x, self.currentPoint.y + 1)];
	self.southButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x, self.currentPoint.y - 1)];
	
}


-(BOOL)tileExistsAtPoint:(CGPoint)point
{
	NSLog(@"Entering tileExistsAtPoint");
	
	if (point.y >= 0 && point.x >= 0 && point.x < [self.tiles count] && point.y < [[self.tiles objectAtIndex:point.x] count])
		return NO;
	else
		return YES;
}


-(void) updateCharacterStatsForArmor:(TEAArmor *)armor withWeapons:(TEAWeapon *) weapon withHealthEffect:(int)healthEffect
{
	NSLog(@"Entering updateCharacterStatsForArmor");
	
	if(armor != nil) {
		self.character.health = self.character.health - self.character.armor.health + armor.health;
		self.character.armor = armor;
	}
	else if(weapon != nil) {
		self.character.damage = self.character.damage - self.character.weapon.damage + weapon.damage;
		self.character.weapon = weapon;
	}
	
	else if (healthEffect != 0 ) {
		self.character.health = self.character.health + healthEffect;
	}
	
	else {
		self.character.health = self.character.health + self.character.armor.health;
		self.character.damage = self.character.damage + self.character.weapon.damage;
	}
}

@end
