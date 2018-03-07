//
//  SHEMaskView.m
//  SHEMaskDemo
//
//  Created by 天津一侨科技有限公司 on 2018/3/6.
//  Copyright © 2018年 xxx. All rights reserved.
//

#import "SHEMaskView.h"
#define KSW  [UIScreen mainScreen].bounds.size.width
#define KSH  [UIScreen mainScreen].bounds.size.height
@implementation SHEMaskView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (instancetype)initWithFrame:(CGRect)frame withImgFrame:(NSArray *)imgFrameArray withBtnFrame:(NSArray *)btnFrameArrat withImgArrat:(NSArray *)imgArray{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.5];
        bgViewArray=[NSMutableArray array];
        index=0;
        
        for (int i=0; i<imgArray.count; i++) {
            UIView *bgV=[self creatIndexImage:[imgFrameArray[i] CGRectValue] withBtnFrame:[btnFrameArrat[i] CGRectValue] withImage:imgArray[i]];
            [self addSubview:bgV];
            [bgViewArray addObject:bgV];
            if (i!=0) {
                bgV.hidden=YES;
            }
        }
        
    }
    return self;
}
-(UIView *)creatIndexImage:(CGRect)imgFrame withBtnFrame:(CGRect)btnFrame withImage:(NSString *)imgName
{
    UIView *bgV=[[UIView alloc]initWithFrame:CGRectMake(0, 0, KSW, KSH)];
    bgV.backgroundColor=[UIColor clearColor];
    
    UIImageView *bgView=[[UIImageView alloc]initWithFrame:imgFrame];
    bgView.image=[UIImage imageNamed:imgName];
    bgView.userInteractionEnabled=YES;
    [bgV addSubview:bgView];
    
    
    UIButton *knowBtn=[UIButton buttonWithType:UIButtonTypeCustom];
    knowBtn.frame=btnFrame;
    knowBtn.backgroundColor=[UIColor clearColor];
    [knowBtn addTarget:self action:@selector(knowBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [bgV addSubview:knowBtn];
    return bgV;
    
}
-(void)knowBtnClick
{
    //如果index小于bgViewArray数量，执行
    if(index<bgViewArray.count-1)
    {
        UIView *bgV=bgViewArray[index];
        UIView *bgV1=bgViewArray[index+1];
        bgV.hidden=YES;
        bgV1.hidden=NO;
        
    }
    //如果index＝＝bgViewArray数量，消失
    if (index==bgViewArray.count-1) {
        [self removeFromSuperview];
    }
    index++;
    
}
@end
