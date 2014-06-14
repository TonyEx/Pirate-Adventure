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


@interface TEAViewController ()


@end

@implementation TEAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	TEAFactory *factory = [[TEAFactory alloc] init];
	self.tiles = [factory tiles];
	self.currentPoint = CGPointMake(0, 0);
	NSLog(@"%f, %f", self.currentPoint.x, self.currentPoint.y);
	
	[self updateTile];
}

-(void)updateTile
{
	TEATile *tileModel = [[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
	
	NSLog(@"%f, %f", self.currentPoint.x, self.currentPoint.y);
	NSLog(@"%@", tileModel);
	NSLog(@"%@", tileModel.story);
//	NSLog(@"%@", tileModel.backgroundImage);
//	NSLog(@"%@", tileModel.actionButtonName);
	self.storyLabel.text = tileModel.story;
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionButtonPressed:(UIButton *)sender {
}

- (IBAction)northButtonPressed:(UIButton *)sender {
}

- (IBAction)westButtonPressed:(UIButton *)sender {
}

- (IBAction)southButtonPressed:(UIButton *)sender {
}

- (IBAction)eastButtonPressed:(UIButton *)sender {
}
@end
