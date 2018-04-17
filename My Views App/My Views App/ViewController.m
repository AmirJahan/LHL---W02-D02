#import "ViewController.h"


@interface ViewController ()
@property UILabel* redLabel;
@end


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    _redLabel = [[UILabel alloc] initWithFrame: CGRectZero];
    _redLabel.backgroundColor = [UIColor redColor];
    _redLabel.text = @"Hello";
    _redLabel.userInteractionEnabled = true;
    [self.view addSubview: _redLabel];
    
    
    [self setupConstrains];
}



-(void)setupConstrains
{
    NSLayoutConstraint* topConst = [NSLayoutConstraint constraintWithItem:_redLabel
                                                                attribute:NSLayoutAttributeTop
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.view
                                                                attribute:NSLayoutAttributeTop
                                                               multiplier:1
                                                                 constant:40];
    
    NSLayoutConstraint* leftConst = [NSLayoutConstraint constraintWithItem:_redLabel
                                                                attribute:NSLayoutAttributeLeft
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.view
                                                                attribute:NSLayoutAttributeLeft
                                                               multiplier:1
                                                                 constant:20];
    
    NSLayoutConstraint* rightConst = [NSLayoutConstraint constraintWithItem:_redLabel
                                                                attribute:NSLayoutAttributeRight
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.view
                                                                attribute:NSLayoutAttributeRight
                                                               multiplier:1
                                                                 constant:-20];
    
    NSLayoutConstraint* bottomConst = [NSLayoutConstraint constraintWithItem:_redLabel
                                                                  attribute:NSLayoutAttributeBottom
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:self.view
                                                                  attribute:NSLayoutAttributeBottom
                                                                 multiplier:1
                                                                   constant:-200];
    
    
    NSLayoutConstraint* heightConst = [NSLayoutConstraint constraintWithItem:_redLabel
                                                                  attribute:NSLayoutAttributeHeight
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:self.view
                                                                  attribute:NSLayoutAttributeHeight
                                                                  multiplier:100.0/667.0
                                                                   constant:0];
    
    _redLabel.translatesAutoresizingMaskIntoConstraints = false;
    
    topConst.active = true;
    leftConst.active = true;
    rightConst.active = true;
//    heightConst.active = true;
    bottomConst.active = true;
   
}




-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{

}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UITouch* myTouch = [[touches allObjects] objectAtIndex:0];
    
    //
    _redLabel.center = [myTouch locationInView: self.view];

}




@end
