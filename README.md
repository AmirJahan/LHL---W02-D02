Hello everyone, this morning, we covered the following areas:

Autolayout and constraints. We discussed how the elements of the view could act differently in different device sizes. We also looked at making views dynamically. We made some constraints in the storyboard and then turned into making constraints programatically. 


We also discussed the use of UI View animation and Animation Blocks. We could test the animations using the following code:

- (IBAction)animateAction:(id)sender {
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:1];
    _myLabel.center = [self.view center];
    [UIView commitAnimations];
}


We then went through the responders and touch events:

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UITouch* myTouch = [[touches allObjects] objectAtIndex:0];

    if (myTouch.view == _myLabel)
        _myLabel.alpha = .2;
}


-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
      UITouch* myTouch = [[touches allObjects] objectAtIndex:0];
    	myTouch.view.center = [myTouch locationInView:self.view];
}


We finally discussed the difference between view bounds vs view frame. The bounds of a view is the rectangle, expressed as a location (x,y) and size (width,height) relative to its OWN coordinate system (0,0). 
The frame of a view is the rectangle, expressed as a location (x,y) and size (width,height) relative to the SUPERVIWEx it is contained within.

We can try a simple test using the following:

NSLog(@"\nx: %f\ny: %f\n w: %f\n h:%f",
      _myLabel.frame.origin.x,
      _myLabel.frame.size.height);

NSLog(@"\nx: %f\ny: %f\n w: %fn h:%f",
      _myLabel.bounds.origin.x,
      _myLabel.bounds.size.height);

At the end, we had a quick look through attributed strings. 

Keywords of the day:
![alt text](https://github.com/AmirJahan/LHL---W02-D02/blob/master/LHL%20W2%20D2.png)
