//
//  SHEMaskView.h
//  SHEMaskDemo
//
//  Created by xxx on 2018/3/6.
//  Copyright © 2018年 xxx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SHEMaskView : UIView
{
    NSMutableArray *bgViewArray;//存放指引蚊子图片的数组
    NSInteger index;//按钮点击次数
}
- (instancetype)initWithFrame:(CGRect)frame withImgFrame:(NSArray *)imgFrameArray withBtnFrame:(NSArray *)btnFrameArrat withImgArrat:(NSArray *)imgArray;
@end
