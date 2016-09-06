//
//  ViewController.m
//  FlyHeart
//
//  Created by 于慧霞 on 16/8/30.
//  Copyright © 2016年  yuhuixia. All rights reserved.
//


#import "ViewController.h"
#import "XBHeartFlyView.h"

#define DEVICEWIDTH [UIScreen mainScreen].bounds.size.width

#define DEVICEHEIGHT [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor darkGrayColor];
    // Do any additional setup after loading the view, typically from a nib.
}



- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    XBHeartFlyView* heart = [[XBHeartFlyView alloc]initWithFrame:CGRectMake(0, 0, 36, 36)];  //大小
   
    

       [self.view addSubview:heart];
    CGPoint fountainSource = CGPointMake(DEVICEWIDTH - 60,DEVICEHEIGHT - 50); // 起点
    heart.center = fountainSource;
    [heart heartFlyInView:self.view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
