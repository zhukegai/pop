//
//  PopView.m
//  测试拖曳泡泡
//
//  Created by beike 柯 on 17/2/17.
//  Copyright © 2017年 beike 柯. All rights reserved.
//

#import "PopView.h"

@interface PopView (){
    UIBezierPath* _path;
    UIView* _frontView;
    UIView* _backView;
    
    CGPoint _originPoint;
    
    
    CGPoint A,B,C,D,O,P;
    CGFloat r1,r2;
}

@end

@implementation PopView

+ (instancetype)initWithPoint:(CGPoint)point superView:(UIView*)superView{
    PopView* pop = [[PopView alloc] init];
    pop.bubbleColor = [UIColor blueColor];
    pop.bubbleWidth = 50;
    pop.viscosity = 20;
    pop->_originPoint = point;
    [pop setupWithView:superView];
    return pop;
}

- (void)setupWithView:(UIView*)view{
    _frontView = [[UIView alloc] init];
    _frontView.center = _originPoint;
    _frontView.bounds = CGRectMake(0, 0, _bubbleWidth, _bubbleWidth);
    _frontView.backgroundColor = _bubbleColor;
    _frontView.layer.cornerRadius = _bubbleWidth/2;

    UIPanGestureRecognizer* pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(drag:)];
    [_frontView addGestureRecognizer:pan];
    
    [view addSubview:_frontView];
    

    _path = [[UIBezierPath alloc] init];
    
    [_path addArcWithCenter:CGPointMake(_bubbleWidth/2, _bubbleWidth/2) radius:_bubbleWidth/2 startAngle:0 endAngle:M_PI*2 clockwise:YES];
    
    
    _backView = [[UIView alloc] init];
    _backView.center = _originPoint;
    _backView.bounds = CGRectMake(0, 0, _bubbleWidth, _bubbleWidth);
    _backView.backgroundColor = _bubbleColor;
    _backView.layer.cornerRadius = _bubbleWidth/2;
    [view addSubview:_backView];
    [view insertSubview:_backView belowSubview:_frontView];
    
    
    
}


- (void)drag:(UIPanGestureRecognizer*)pan{
    
    CGPoint p = [pan locationInView:pan.view];
    
    if(!CGPathContainsPoint(_path.CGPath, NULL, p, NO)) return;
    
    CGPoint offset = [pan translationInView:pan.view];
    
    CGPoint center = pan.view.center;
    
    center.x += offset.x;
    center.y += offset.y;
    
    pan.view.center = center;
    
    [pan setTranslation:CGPointZero inView:pan.view];
    
    
    
}

@end
