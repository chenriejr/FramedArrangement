//
//  ViewController.m
//  FramedArrangement
//
//  Created by Guest User on 2/3/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic,strong) UIView *redView;
@property (nonatomic,strong) UIView*greenView;
@property (nonatomic,strong) UIView *blueView;
@property (nonatomic,strong) UIView *yelloView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.redView = [UIView new];
    self.redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.redView];
    
    self.greenView = [UIView new];
    self.greenView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:self.greenView];
    
    self.blueView = [UIView new];
    self.blueView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:self.blueView];
    
    self.yelloView = [UIView new];
    self.yelloView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:self.yelloView];
    // Do any additional setup after loading the view
    
    [self layoutSquares];
    [self layoutHorizontalRectangles];

}



-(void) layoutSquares {
  
    
    CGFloat squareWidth = self.view.frame.size.width/2;
    CGFloat myWidth = self.view.frame.size.width;
    CGFloat myHeight= self.view.frame.size.height;

    
    
    self.redView.frame = CGRectMake(0, 64,  squareWidth, squareWidth);
    self.greenView.frame = CGRectMake(myWidth/2, 64, squareWidth, squareWidth);
    self.blueView.frame = CGRectMake(0, myWidth/2+64, squareWidth, squareWidth);
    self.yelloView.frame = CGRectMake(myWidth/2, myWidth/2+64, squareWidth, squareWidth);
    

    }



-(void) layoutHorizontalRectangles {
    
    CGFloat rectangleWidth = self.view.frame.size.width;
    CGFloat myHeight= self.view.frame.size.height;
    
    self.redView.frame = CGRectMake(0, 64,  rectangleWidth, myHeight/4);
    self.greenView.frame = CGRectMake(0, 64+64, rectangleWidth, myHeight/4);
    self.blueView.frame = CGRectMake(0, 64*3, rectangleWidth, myHeight/4);
    self.yelloView.frame = CGRectMake(0, 64*4, rectangleWidth, myHeight/4);
    
    
   }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
