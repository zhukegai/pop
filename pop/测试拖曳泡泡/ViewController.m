//
//  ViewController.m
//  测试拖曳泡泡
//
//  Created by beike 柯 on 17/2/17.
//  Copyright © 2017年 beike 柯. All rights reserved.
//

#import "ViewController.h"
#import "PopView.h"

@interface ViewController ()

@property(nonatomic,strong)PopView* pop;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _pop = [PopView initWithPoint:CGPointMake(100, 300) superView:self.view];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
