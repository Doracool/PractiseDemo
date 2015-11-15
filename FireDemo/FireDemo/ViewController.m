//
//  ViewController.m
//  FireDemo
//
//  Created by qingyun on 15/11/15.
//  Copyright (c) 2015年 河南青云信息技术有限公司. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //创建UIImageView大小与屏幕一致
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:self.view.frame];
    //创建可变数组，进行初始化
    NSMutableArray *array = [[NSMutableArray alloc]init];
    //for循环将图片写入数组中
    for (int i = 1; i < 18 ; i++) {
        
        //创建动画的导入路径
        NSString *path = [NSString stringWithFormat:@"campFire%02d.gif",i];
        
        UIImage *image = [UIImage imageNamed:path];
        
        [array addObject:image];
        
        [NSMutableArray array];
        
    }
    //动画的数组
    imageView.animationImages = array;
    //动画时间
    imageView.animationDuration = 1;
    //动画开始
    [imageView startAnimating];
    
    [self.view addSubview:imageView];
    // Do any additional setup after loading the view, typically from a nib.
    
    //雪花飞翔
    
    
    //定时器设置雪花下落间隔时间
    
    [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(SnowFly) userInfo:nil repeats:YES];
}


-(void)SnowFly{
    
    //创建雪花

    int x1 = round(random()%375);
    UIImageView *snow = [[UIImageView alloc]initWithFrame:CGRectMake(x1, -50, 50, 50)];
    
    snow.image = [UIImage imageNamed:@"flake.png"];
    //雪花的不定速度
    double speed = 1/round(random()%100)+1;
    //雪花的不定大小
    double big = 1/round(random()%100)+1;
    
    //雪花飞翔的动画
    
    [UIImageView animateWithDuration:5*speed animations:^{
        
        int x2 = round(random()%375);
        snow.frame = CGRectMake(x2, 667, 50*big, 50*big);
    
        
    }];
    [self.view addSubview:snow];

    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
