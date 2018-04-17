//
//  ViewController.m
//  Basic Animation
//
//  Created by Amir J on 4/17/18.
//  Copyright © 2018 Cinard Digital Media Institute. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *redBox;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)animateAction:(id)sender
{
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:2];
    
    _redBox.center = CGPointMake(_redBox.center.x,
                                 _redBox.center.y + 200);
    
    [UIView commitAnimations];
    
    
}



@end
