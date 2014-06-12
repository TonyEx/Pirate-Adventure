//
//  TEAViewController.m
//  Pirate Adventure
//
//  Created by Tony Angelo on 6/9/14.
//  Copyright (c) 2014 Tony Angelo. All rights reserved.
//

#import "TEAViewController.h"
#import "TEAFactory.h"


@interface TEAViewController ()

@end

@implementation TEAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	TEAFactory *factory = [[TEAFactory alloc] init];
	NSArray *tiles = [factory tiles];
	NSLog(@"%@", tiles);
	
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
