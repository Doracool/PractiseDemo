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
@property(nonatomic,strong)UIImageView *imageView;
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
    
    [self startAnimating:12 imagePicture:@"cymbal"];
}

-(void)drinkClick{
    
    [self startAnimating:80 imagePicture:@"drink"];

}

-(void)eatClick{
    
    [self startAnimating:39 imagePicture:@"eat"];
   
}

-(void)fartClick{
    
    [self startAnimating:27 imagePicture:@"fart"];
   
}

-(void)pieClick{
    
    [self startAnimating:23 imagePicture:@"pie"];
    
}

-(void)scratchClick{
    
    [self startAnimating:55 imagePicture:@"scratch"];
    
}

-(void)LeftClick{
    
    [self startAnimating:29 imagePicture:@"footRight"];
    
}

-(void)RightClick{
    
    [self startAnimating:29 imagePicture:@"footLeft"];
   
}

-(void)HeadClick{
    
    [self startAnimating:80 imagePicture:@"knockout"];

}

//动画执行代码
-(void)startAnimating:(int)count imagePicture:(NSString *)imagePicture
{
    
    if (self.imageView.isAnimating) {
        
        return;
    }
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:self.view.frame];
    [self.view addSubview:imageView];
    NSMutableArray *array = [[NSMutableArray alloc]init];
    for (int i = 0; i < count; i++) {
        NSString *imgCat = [NSString stringWithFormat:@"%@_%02d",imagePicture,i];
//        UIImage *image =[UIImage imageNamed:path];
//        [array addObject:image];
        
        NSString *path1 = [[NSBundle mainBundle] pathForResource:imgCat ofType:@"jpg"];
        UIImage *image = [UIImage imageWithContentsOfFile:path1];
        
        [array addObject:image];
    }
    
    imageView.animationImages = array;
    imageView.animationDuration = 0.05*count;
    imageView.animationRepeatCount = 1;
    [imageView startAnimating];
    
#if 0
    [NSTimer scheduledTimerWithTimeInterval:imageView.animationDuration target:self selector:@selector(clearMemory) userInfo:nil repeats:NO];
#else
    [imageView performSelector:@selector(setAnimationImages:) withObject:nil afterDelay:imageView.animationDuration];

//    [imageView performSelector:@selector(clearMemory) withObject:nil afterDelay:imageView.animationDuration];

#endif
}

-(void)clearMemory
{
    self.imageView.animationImages = nil;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
