//
//  ViewController.m
//  04-ScanImageDemo
//
//  Created by qingyun on 15/8/28.
//  Copyright (c) 2015年 河南青云信息技术有限公司. All rights reserved.
//

#import "ViewController.h"
#import "WebViewController.h"
@interface ViewController ()<UIAlertViewDelegate,UIActionSheetDelegate>
{
    int index;
}
@property (weak, nonatomic) IBOutlet UILabel *imageIndex;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *des;
@property (weak, nonatomic) IBOutlet UIButton *leftBtn;
@property (weak, nonatomic) IBOutlet UIButton *rightBtn;

@property (nonatomic,strong)NSArray *array;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.leftBtn.enabled = NO;
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Images" ofType:@"plist"];
    _array = [NSArray arrayWithContentsOfFile:path];
    
    //仅仅是对imageIndex 赋值 （1/5）
    self.imageIndex.text = [NSString stringWithFormat:@"%d/%lu",index+1,(unsigned long)self.array.count];
    
    [self.view addSubview:_imageView];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)updateData{
    
#if 0
    //方法 一
    if (index == 0) {
        self.leftBtn.enabled = NO;
    }else{
        self.leftBtn.enabled = YES;
    }
    
    if (index == self.array.count - 1) {
        self.rightBtn.enabled = NO;
    }else{
        self.rightBtn.enabled = YES;
    }
#endif
    
    //方法二
    self.leftBtn.enabled = index == 0 ? NO : YES;
    self.rightBtn.enabled = index == self.array.count - 1 ? NO : YES;
    
    
    //1、改变imageIndex的值
    self.imageIndex.text = [NSString stringWithFormat:@"%d/%lu",index+1,(unsigned long)self.array.count];
    
    //2、改变imageview
    
    NSDictionary *dic = [self.array objectAtIndex:index];
    
    self.imageView.image = [UIImage imageNamed:[dic objectForKey:@"name"]];
    NSLog(@"%@",[dic objectForKey:@"name"]);
    //3、改变图片描述des
    self.des.text = [dic objectForKey:@"desc"];
    
    
}
- (IBAction)changeImage:(UIButton *)sender {
    
    if (sender.tag == 1) { //上一张
        index--;
        [self updateData];
    }else if (sender.tag == 2){//下一张
        index++;
        [self updateData];
/*
        if (index+1 > self.array.count -1) {
            
            self.rightBtn.enabled = NO;
            return;
        }
        self.leftBtn.enabled = YES;
        NSDictionary *dic = [self.array objectAtIndex:index+1];
        
        //改变第几张图片（1/5）
        
        self.imageIndex.text = [NSString stringWithFormat:@"%d/%lu",index+2,(unsigned long)self.array.count];
        
        //改变图片
        UIImage *image = [UIImage imageNamed:[dic objectForKey:@"name"]];
        self.imageView.image = image;
        //改变图片相对应的描述
        
        NSString *dec = [NSString stringWithFormat:@"%@",[dic objectForKey:@"desc"]];
        self.des.text = dec;
        
        index++;
*/
    }
}
- (IBAction)gotoWebView:(UIButton *)sender {
#if 0
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"提醒" message:@"查看详情" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"前往", nil];
    
    [alertView show];
#endif
    
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"提醒" delegate:self cancelButtonTitle:@"取消" destructiveButtonTitle:@"确定" otherButtonTitles:@"分享1",@"分享2",@"分享3", nil];
    actionSheet.actionSheetStyle = UIActionSheetStyleBlackOpaque;
    [actionSheet showInView:self.view];
    
    [self performSelector:@selector(dismissActionSheet:) withObject:actionSheet afterDelay:2];
}

-(void)dismissActionSheet:(UIActionSheet *)actionSheet{
    [actionSheet dismissWithClickedButtonIndex:0 animated:YES];
}

//根据点击alertView的 按钮 处理不同的消息
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if (buttonIndex == 1) {
        NSDictionary *dic = [self.array objectAtIndex:index];
        WebViewController *webViewController = [[WebViewController alloc] init];
        webViewController.urlString = dic[@"detail"];
        [self presentViewController:webViewController animated:YES completion:^{}];
    }
}
//根据点击actionSheet的按钮 处理不同的消息
- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSLog(@"%ld",(long)buttonIndex);
    if (buttonIndex == 2) {//取消
        NSLog(@"cancle");
    }else if (buttonIndex == 0){//确定
        NSDictionary *dic = [self.array objectAtIndex:index];
        WebViewController *webViewController = [[WebViewController alloc] init];
        webViewController.urlString = dic[@"detail"];
        [self presentViewController:webViewController animated:YES completion:^{}];
    }else if (buttonIndex == 1){//分享
        NSLog(@"share");
        //[actionSheet dismissWithClickedButtonIndex:<#(NSInteger)#> animated:<#(BOOL)#>];
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
