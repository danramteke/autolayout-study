//
//  DRViewController.m
//  Autolayout Study
//
//  Created by Daniel R on 3/13/13.
//  Copyright (c) 2013 Daniel R. All rights reserved.
//

#import "DRViewController.h"

@interface DRViewController ()
@property (nonatomic, strong) UILabel* label;
@property (nonatomic, strong) UIView* innerView;
@property (nonatomic, strong) UIButton* innerButton;
@end

@implementation DRViewController

- (id) init {
    self = [super init];
    if (self) {

        _label = [self makeLabel];
        
        _innerView = [self setupInnerView];
        _innerButton = [self setupInnerButton];
        
        
        
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    

}

-(IBAction)buttonPushed:(id)sender{
    _label.text = [[NSDate date] description];
    [_label sizeToFit];
}

-(UIButton*)setupInnerButton {
    UIButton* button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"Inner" forState:UIControlStateNormal];
    [button setTranslatesAutoresizingMaskIntoConstraints:NO];
    [button setBackgroundColor:[UIColor redColor]];
    button.reversesTitleShadowWhenHighlighted = YES;
    button.showsTouchWhenHighlighted = YES;

    [_innerView addConstraints:@[
     [NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:_innerView attribute:NSLayoutAttributeHeight multiplier:1.0 constant:-6.0],
     [NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:_innerView attribute:NSLayoutAttributeWidth multiplier:1.0 constant:-6.0],
     [NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:_innerView attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0],
     [NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:_innerView attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0]
     ]];
    [_innerView addSubview:button];
    button.userInteractionEnabled = YES;
    [button addTarget:self action:@selector(buttonPushed:) forControlEvents:UIControlEventTouchUpInside];
    return button;
}

-(UIView*)setupInnerView {
    UIView* innerView = [[UIView alloc] init];
    [innerView setTranslatesAutoresizingMaskIntoConstraints:NO];
    innerView.backgroundColor = [UIColor blueColor];
    
//    innerView.intrinsicContentSize = CGSizeMake(320, 50);
    [self.view addConstraint:[NSLayoutConstraint
                              constraintWithItem:innerView
                              attribute:NSLayoutAttributeHeight
                              relatedBy:NSLayoutRelationEqual
                              toItem:nil
                              attribute:NSLayoutAttributeNotAnAttribute multiplier:0.0 constant:50.0]];

    [self.view addConstraint:[NSLayoutConstraint
                              constraintWithItem:innerView
                              attribute:NSLayoutAttributeWidth
                              relatedBy:NSLayoutRelationEqual
                              toItem:self.view
                              attribute:NSLayoutAttributeWidth multiplier:1.0 constant:-20.0]];

    
    [self.view addConstraint:[NSLayoutConstraint
                              constraintWithItem:innerView
                              attribute:NSLayoutAttributeTop
                              relatedBy:NSLayoutRelationEqual
                              toItem:self.view
                              attribute:NSLayoutAttributeTop multiplier:1.0 constant:100.0]];
    [self.view addConstraint:[NSLayoutConstraint
                              constraintWithItem:innerView
                              attribute:NSLayoutAttributeCenterX
                              relatedBy:NSLayoutRelationEqual
                              toItem:self.view
                              attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0]];
    [self.view addSubview:innerView];
    innerView.userInteractionEnabled = YES;
    return innerView;
}

-(UILabel*)makeLabel{
    UILabel* someLabel = [[UILabel alloc] init];
    someLabel.text = @"asdf";
    
    [self.view addConstraint:[NSLayoutConstraint
                              constraintWithItem:someLabel
                              attribute:NSLayoutAttributeTop
                              relatedBy:NSLayoutRelationEqual
                              toItem:self.view
                              attribute:NSLayoutAttributeTop multiplier:1.0 constant:20.0]];
    [self.view addConstraint:[NSLayoutConstraint
                              constraintWithItem:someLabel
                              attribute:NSLayoutAttributeCenterX
                              relatedBy:NSLayoutRelationEqual
                              toItem:self.view
                              attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0]];
    
    [someLabel sizeToFit];
    [someLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view addSubview:someLabel];
    return someLabel;
}

@end
