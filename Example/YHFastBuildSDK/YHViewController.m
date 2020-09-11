//
//  YHViewController.m
//  YHFastBuildSDK
//
//  Created by zhengxiaolang on 09/11/2020.
//  Copyright (c) 2020 zhengxiaolang. All rights reserved.
//

#import "YHViewController.h"
#import <objc/runtime.h>

@interface YHViewController ()

@property(nonatomic,strong)UIButton *btn;

@end

@implementation YHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self.view addSubview:self.btn];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - lazy loading

-(UIButton *)btn{
    if (!_btn) {
        _btn = [[UIButton alloc] initWithFrame:CGRectMake(20, 100, 300, 50)];
        [_btn setTitle:@"可以点击" forState:UIControlStateNormal];
        [_btn setBackgroundColor:[UIColor purpleColor]];
        [_btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    }
    return _btn;
}


/// 注入代码，可以实时快速编译，所有代码只能在以下方法（injected）执行，方法名字不能改变。

-(void)injected{
//TODO: ***
    NSLog(@"build succ");
    
    [self addTestView];
    
    [self changeBGColor];
}

-(void)addTestView{
    [self.btn setTitle:@"change my name" forState:UIControlStateNormal];
    
}

-(void)changeBGColor{
    self.view.backgroundColor = [UIColor grayColor];
    
}
@end
