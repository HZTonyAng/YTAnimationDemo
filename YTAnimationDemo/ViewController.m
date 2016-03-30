//
//  ViewController.m
//  YTAnimationDemo
//
//  Created by TonyAng on 16/3/30.
//  Copyright © 2016年 TonyAng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic , strong) UILabel *ytLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _ytLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2 - 50, 64, 100, 100)];
    _ytLabel.backgroundColor = [UIColor colorWithRed:arc4random()%256/256.0 green:arc4random()%256/256.0 blue:arc4random()%256/256.0 alpha:1.0];
    [self.view addSubview:_ytLabel];
//    [self createAnimation1];
//    [self createAnimation2];
//    [self createAnimation3];
//    [self createAnimation4];
    [self createAnimation5];

}

//平移
-(void)createAnimation1{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:5.0];
    [_ytLabel setAlpha:0.0];
    
    [UIView commitAnimations];
    
    [UIView beginAnimations:nil context:nil]; // 开始动画
    [UIView setAnimationDuration:5.0]; // 动画时长
    /**
     *  图像向下移动
     */
    CGPoint point = _ytLabel.center;
    point.y += 150;
    [_ytLabel setCenter:point];
    
    [UIView commitAnimations]; // 提交动画
}

-(void)createAnimation2{
    [UIView animateWithDuration:5.0 // 动画时长
                     animations:^{
                         CGPoint point = _ytLabel.center;
                         point.y += 150;
                         [_ytLabel setCenter:point];

                     }];
}

-(void)createAnimation3{
    [UIView animateWithDuration:4.0 // 动画时长
                     animations:^{
                         CGPoint point = _ytLabel.center;
                         point.y += 150;
                         [_ytLabel setCenter:point];
                     }
                     completion:^(BOOL finished) {
                         // 动画完成后执行
                         [UIView beginAnimations:nil context:nil];
                         [UIView setAnimationDuration:1.0];
                         [_ytLabel setAlpha:0.0];
                     }];
}

-(void)createAnimation4{
    [UIView animateWithDuration:4.0 // 动画时长
                          delay:2.0 // 动画延迟
                        options:UIViewAnimationOptionCurveEaseIn // 动画过渡效果
                     animations:^{
                         CGPoint point = _ytLabel.center;
                         point.y += 150;
                         [_ytLabel setCenter:point];
                     }
                     completion:^(BOOL finished) {
                         // 动画完成后执行
                         [UIView beginAnimations:nil context:nil];
                         [UIView setAnimationDuration:1.0];
                         [_ytLabel setAlpha:0.0];
                     }];
}

-(void)createAnimation5{
    [UIView animateWithDuration:4.0 // 动画时长
                          delay:1.0 // 动画延迟
         usingSpringWithDamping:0.5f // 类似弹簧振动效果 0~1
          initialSpringVelocity:2.0 // 初始速度
                        options:UIViewAnimationOptionCurveEaseIn // 动画过渡效果
                     animations:^{
                         // code...
                         CGPoint point = _ytLabel.center;
                         point.y += 150;
                         [_ytLabel setCenter:point];
                     } completion:^(BOOL finished) {
                         // 动画完成后执行
                         [UIView beginAnimations:nil context:nil];
                         [UIView setAnimationDuration:1.0];
                         [_ytLabel setAlpha:0.0];
                         [_ytLabel setAlpha:1];
                     }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
