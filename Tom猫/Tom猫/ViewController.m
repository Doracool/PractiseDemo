//
//  ViewController.m
//  Tom猫
//
//  Created by qingyun on 15/11/15.
//  Copyright (c) 2015年 河南青云信息技术有限公司. All rights reserved.
//

#import "ViewController.h"
#import "Button.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView *BackGround = [[UIImageView alloc]initWithFrame:self.view.frame];
    
    BackGround.image = [UIImage imageNamed:@"angry_00.jpg"];
    
    [self.view addSubview:BackGround];
    
    //按钮
    
    UIButton *cymbal = [UIButton buttonWithType:UIButtonTypeCustom];
    
    cymbal.frame = CGRectMake(20, 450, 50, 50);
    UIImage *BGcym = [UIImage imageNamed:@"cymbal.png"];
    
    [cymbal setBackgroundImage:BGcym forState:UIControlStateNormal];
    
    [self.view addSubview:cymbal];
    
    [cymbal addTarget:self action:@selector(cymbalClick) forControlEvents:UIControlEventTouchUpInside];
    
    //**************************************************//
    UIButton *drink = [UIButton buttonWithType:UIButtonTypeCustom];
    
    drink.frame = CGRectMake(20, 500, 50, 50);
    UIImage *BGdr = [UIImage imageNamed:@"drink.png"];
    
    [drink setBackgroundImage:BGdr forState:UIControlStateNormal];
    
    [self.view addSubview:drink];
    
    [drink addTarget:self action:@selector(drinkClick) forControlEvents:UIControlEventTouchUpInside];
    //**************************************************//
    
    UIButton *eat = [UIButton buttonWithType:UIButtonTypeCustom];
    
    eat.frame = CGRectMake(20, 550, 50, 50);
    UIImage *BGeat = [UIImage imageNamed:@"eat.png"];
    
    [eat setBackgroundImage:BGeat forState:UIControlStateNormal];
    
    [self.view addSubview:eat];
    
    [eat addTarget:self action:@selector(eatClick) forControlEvents:UIControlEventTouchUpInside];
    //**************************************************//
    
    UIButton *fart = [UIButton buttonWithType:UIButtonTypeCustom];
    
    fart.frame = CGRectMake(305, 450, 50, 50);
    UIImage *BGfart = [UIImage imageNamed:@"fart.png"];
    
    [fart setBackgroundImage:BGfart forState:UIControlStateNormal];
    
    [self.view addSubview:fart];
    
    [fart addTarget:self action:@selector(fartClick) forControlEvents:UIControlEventTouchUpInside];
    //**************************************************//
    
    UIButton *pie = [UIButton buttonWithType:UIButtonTypeCustom];
    
    pie.frame = CGRectMake(305, 500, 50, 50);
    UIImage *BGpie = [UIImage imageNamed:@"pie.png"];
    
    [pie setBackgroundImage:BGpie forState:UIControlStateNormal];
    
    [self.view addSubview:pie];
    
    [pie addTarget:self action:@selector(pieClick) forControlEvents:UIControlEventTouchUpInside];
//**************************************************//
    
    UIButton *scratch = [UIButton buttonWithType:UIButtonTypeCustom];
    
    scratch.frame = CGRectMake(305, 550, 50, 50);
    UIImage *BGstr = [UIImage imageNamed:@"scratch.png"];
    
    [scratch setBackgroundImage:BGstr forState:UIControlStateNormal];
    
    [self.view addSubview:scratch];
    
    [scratch addTarget:self action:@selector(scratchClick) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *Left = [UIButton buttonWithType:UIButtonTypeCustom];
    
    Left.frame = CGRectMake(130, 600, 50, 50);
    
//    Left.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:Left];
    [Left addTarget:self action:@selector(LeftClick) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *Right = [UIButton buttonWithType:UIButtonTypeCustom];
    
    Right.frame = CGRectMake(190, 600, 50, 50);
    
//    Right.backgroundColor = [UIColor greenColor];
    
    [self.view addSubview:Right];
    [Right addTarget:self action:@selector(RightClick) forControlEvents:UIControlEventTouchUpInside];
    
    
    UIButton *Head = [UIButton buttonWithType:UIButtonTypeCustom];
    
    Head.frame = CGRectMake(100, 130, 170, 170);
    
//    Head.backgroundColor = [UIColor yellowColor];
    
    [self.view addSubview:Head];
    [Head addTarget:self action:@selector(HeadClick) forControlEvents:UIControlEventTouchUpInside];
    
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    
    //点击事件
    
}


-(void)cymbalClick{
    
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:self.view.frame];
    [self.view addSubview:imageView];
    NSMutableArray *array = [[NSMutableArray alloc]init];
    for (int i = 0; i < 12; i++) {
        NSString *path = [NSString stringWithFormat:@"cymbal_%02d.jpg",i];
        UIImage *image =[UIImage imageNamed:path];
        [array addObject:image];
    }
    
    imageView.animationImages = array;
    imageView.animationDuration = 3;
    imageView.animationRepeatCount = 1;
    [imageView startAnimating];
    
    
}

-(void)drinkClick{
    
    
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:self.view.frame];
    [self.view addSubview:imageView];
    NSMutableArray *array = [[NSMutableArray alloc]init];
    for (int i = 0; i < 80; i++) {
        NSString *path = [NSString stringWithFormat:@"drink_%02d.jpg",i];
        UIImage *image =[UIImage imageNamed:path];
        [array addObject:image];
    }
    
    imageView.animationImages = array;
    imageView.animationDuration = 3;
    imageView.animationRepeatCount = 1;
    [imageView startAnimating];
    

    
}

-(void)eatClick{
    
    
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:self.view.frame];
    [self.view addSubview:imageView];
    NSMutableArray *array = [[NSMutableArray alloc]init];
    for (int i = 0; i < 39; i++) {
        NSString *path = [NSString stringWithFormat:@"eat_%02d.jpg",i];
        UIImage *image =[UIImage imageNamed:path];
        [array addObject:image];
    }
    
    imageView.animationImages = array;
    imageView.animationDuration = 3;
    imageView.animationRepeatCount = 1;
    [imageView startAnimating];
    

}

-(void)fartClick{
    
    
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:self.view.frame];
    [self.view addSubview:imageView];
    NSMutableArray *array = [[NSMutableArray alloc]init];
    for (int i = 0; i < 27; i++) {
        NSString *path = [NSString stringWithFormat:@"fart_%02d.jpg",i];
        UIImage *image =[UIImage imageNamed:path];
        [array addObject:image];
    }
    
    imageView.animationImages = array;
    imageView.animationDuration = 3;
    imageView.animationRepeatCount = 1;
    [imageView startAnimating];
    

}

-(void)pieClick{
    
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:self.view.frame];
    [self.view addSubview:imageView];
    NSMutableArray *array = [[NSMutableArray alloc]init];
    for (int i = 0; i < 23; i++) {
        NSString *path = [NSString stringWithFormat:@"pie_%02d.jpg",i];
        UIImage *image =[UIImage imageNamed:path];
        [array addObject:image];
    }
    
    imageView.animationImages = array;
    imageView.animationDuration = 3;
    imageView.animationRepeatCount = 1;
    [imageView startAnimating];
    
}

-(void)scratchClick{
    
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:self.view.frame];
    [self.view addSubview:imageView];
    NSMutableArray *array = [[NSMutableArray alloc]init];
    for (int i = 0; i < 55; i++) {
        NSString *path = [NSString stringWithFormat:@"scratch_%02d.jpg",i];
        UIImage *image =[UIImage imageNamed:path];
        [array addObject:image];
    }
    
    imageView.animationImages = array;
    imageView.animationDuration = 3;
    imageView.animationRepeatCount = 1;
    [imageView startAnimating];
    
}

-(void)LeftClick{
    
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:self.view.frame];
    [self.view addSubview:imageView];
    NSMutableArray *array = [[NSMutableArray alloc]init];
    for (int i = 0; i < 29; i++) {
        NSString *path = [NSString stringWithFormat:@"footRight_%02d.jpg",i];
        UIImage *image =[UIImage imageNamed:path];
        [array addObject:image];
    }
    
    imageView.animationImages = array;
    imageView.animationDuration = 3;
    imageView.animationRepeatCount = 1;
    [imageView startAnimating];
}

-(void)RightClick{
    
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:self.view.frame];
    [self.view addSubview:imageView];
    NSMutableArray *array = [[NSMutableArray alloc]init];
    for (int i = 0; i < 29; i++) {
        NSString *path = [NSString stringWithFormat:@"footLeft_%02d.jpg",i];
        UIImage *image =[UIImage imageNamed:path];
        [array addObject:image];
    }
    
    imageView.animationImages = array;
    imageView.animationDuration = 3;
    imageView.animationRepeatCount = 1;
    [imageView startAnimating];
}

-(void)HeadClick{
    
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:self.view.frame];
    [self.view addSubview:imageView];
    NSMutableArray *array = [[NSMutableArray alloc]init];
    for (int i = 0; i < 80; i++) {
        NSString *path = [NSString stringWithFormat:@"knockout_%02d.jpg",i];
        UIImage *image =[UIImage imageNamed:path];
        [array addObject:image];
    }
    
    imageView.animationImages = array;
    imageView.animationDuration = 3;
    imageView.animationRepeatCount = 1;
    [imageView startAnimating];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
