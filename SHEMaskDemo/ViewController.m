//
//  ViewController.m
//  SHEMaskDemo
//
//  Created by 天津一侨科技有限公司 on 2018/3/6.
//  Copyright © 2018年 xxx. All rights reserved.
//

#import "ViewController.h"
#import "SHEMaskView.h"
#define KSW  [UIScreen mainScreen].bounds.size.width
#define KSH  [UIScreen mainScreen].bounds.size.height
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    SHEMaskView *maskview=[[SHEMaskView alloc]initWithFrame:CGRectMake(0, 0, KSW, KSH) withImgFrame:@[[NSValue valueWithCGRect:CGRectMake(0, 34, KSW, 82)],[NSValue valueWithCGRect:CGRectMake(0, 34  , KSW, 82)],[NSValue valueWithCGRect:CGRectMake(0, 100, KSW, 36)]] withBtnFrame:@[[NSValue valueWithCGRect:CGRectMake(240, 70,50, 35)],[NSValue valueWithCGRect:CGRectMake(320, 60, 50, 45)],[NSValue valueWithCGRect:CGRectMake(275, 100, 50, 36)]] withImgArrat:@[@"shezhi",@"xiaoxitongzhi",@"gerenmianban"]];
    
    [self.view addSubview:maskview];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
