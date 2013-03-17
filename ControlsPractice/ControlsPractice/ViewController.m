//
//  ViewController.m
//  ControlsPractice
//
//  Created by KingYoung on 3/17/13.
//  Copyright (c) 2013 WOOYOO.Live. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _lblInfo.text=@"Nothing to do.";
    _lblInfo.textColor=[UIColor redColor];
    
    //    _imageRun.image=[UIImage imageNamed:@"r5.png"];
    UIImage *r1 = [UIImage imageNamed:@"r1.png"];
    UIImage *r2 = [UIImage imageNamed:@"r2.png"];
    UIImage *r3 = [UIImage imageNamed:@"r3.png"];
    UIImage *r4 = [UIImage imageNamed:@"r4.png"];
    UIImage *r5 = [UIImage imageNamed:@"r5.png"];
    _imageRun.animationImages=[NSArray arrayWithObjects:r1,r2,r3,r4,r5,r1, nil];
    _imageRun.animationDuration=0.5;
    [_imageRun startAnimating];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)viewDidUnload
{
    [_lblInfo release];
    _lblInfo=nil;
    [_imageRun release];
    _imageRun=nil;
    [super viewDidUnload];
}
- (void)dealloc {
    [_lblInfo release];
    [_imageRun release];
    [super dealloc];
}
- (IBAction)pressButton:(UIButton *)sender {
    NSString *title =[sender titleForState:UIControlStateNormal];
//    if([title isEqualToString:@"Left"]){
//        _lblInfo.text=@"You pressed Left .";
//    }else{
//        _lblInfo.text=@"You pressed Right .";
//    }
    NSString *info=[[[NSString alloc] initWithFormat:@"You pressed %@ .",title] autorelease];
    _lblInfo.text=info;
//    [info release];
}
@end
