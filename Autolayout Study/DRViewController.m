//
//  DRViewController.m
//  Autolayout Study
//
//  Created by Daniel R on 3/13/13.
//  Copyright (c) 2013 Daniel R. All rights reserved.
//

#import "DRViewController.h"

@interface DRViewController ()

@end

@implementation DRViewController

- (id) init {
    self = [super init];
    if (self) {
        UILabel* someLabel = [[UILabel alloc] init];
        someLabel.text = @"asdf";
        someLabel.frame = CGRectMake(40, 40, 100, 20);
//        [self.view addConstraint:[NSLayoutConstraint ]]
        [self.view addSubview:someLabel];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
