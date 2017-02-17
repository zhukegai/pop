//
//  PopView.h
//  测试拖曳泡泡
//
//  Created by beike 柯 on 17/2/17.
//  Copyright © 2017年 beike 柯. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PopView : NSObject

//气泡的直径
// bubble's diameter
@property(nonatomic, assign) CGFloat bubbleWidth;

//气泡粘性系数，越大可以拉得越长
// viscosity of the bubble,the bigger you set,the longer you drag
@property(nonatomic, assign) CGFloat viscosity;

//气泡颜色
// bubble's color
@property(nonatomic, strong) UIColor *bubbleColor;

+ (instancetype)initWithPoint:(CGPoint)point superView:(UIView*)superView;


@end
