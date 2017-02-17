<p align="left" >
  <img src="logo.png" alt="KYCuteView" title="KYCuteView">
</p>


![CocoaPods Version](https://img.shields.io/badge/pod-v1.3.0-brightgreen.svg)
![License](https://img.shields.io/badge/license-MIT-blue.svg)
![Platform](https://img.shields.io/badge/platform-iOS-red.svg)


实现类似QQ消息拖拽消失的交互+GameCenter的浮动小球效果

![](demo.gif)


![](demo.png)



##Installation

`pod 'KYCuteView', '~> 1.3.0'`


##How to use

```objective-c
  KYCuteView *cuteView = [[KYCuteView alloc]initWithPoint:CGPointMake(25, 505) superView:self.view];
  cuteView.viscosity  = 20;
  cuteView.bubbleWidth = 35;
  cuteView.bubbleColor = [UIColor colorWithRed:0 green:0.722 blue:1 alpha:1];
  [cuteView setUp];
  [cuteView addGesture];
    
  //注意：设置 'bubbleLabel.text' 一定要放在 '-setUp' 方法之后
  //Tips:When you set the 'bubbleLabel.text',you must set it after '-setUp'
  cuteView.bubbleLabel.text = @"13";
```


##PROPERTIES

```objective-c
//父视图
//set the view which you wanna add the 'cuteBubble'
@property (nonatomic,weak)UIView *containerView;

//气泡上显示数字的label
//the label on the bubble
@property (nonatomic,strong)UILabel *bubbleLabel;

//气泡的直径
//bubble's diameter
@property (nonatomic,assign)CGFloat bubbleWidth;

//气泡粘性系数，越大可以拉得越长
//viscosity of the bubble,the bigger you set,the longer you drag
@property (nonatomic,assign)CGFloat viscosity;

//气泡颜色
//bubble's color
@property (nonatomic,strong)UIColor *bubbleColor;

//需要隐藏气泡时候可以使用这个属性：self.frontView.hidden = YES;
//if you wanna hidden the bubble, you can ’self.frontView.hidden = YES‘
@property (nonatomic,strong)UIView *frontView;

```
##Intro:

  Blog: [http://kittenyang.com/drawablebubble/](http://kittenyang.com/drawablebubble/)

##Update

###v1.3.0

  弃用CADisplayLink,解决了屏幕刷新频率和手指滑动速率不一致的问题。


##License
This project is under MIT License. See LICENSE file for more information.
