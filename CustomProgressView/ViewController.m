//
//  ViewController.m
//  CustomProgressView
//
//  Created by lemo on 2018/5/12.
//  Copyright © 2018年 孙亚锋. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+Property.h"

@interface ViewController ()
{
       NSTimer *_timer;
}
@property(nonatomic,strong)UIImageView *progressView;
@end

@implementation ViewController
- (UIImageView *)progressView
{
    if (!_progressView) {
        _progressView = [[UIImageView alloc] init];
        _progressView.center = self.view.center;
        _progressView.bounds = CGRectMake(0,0,250,54);
        
    }
    return _progressView;
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view addSubview:self.progressView];
    NSLog(@"--------%f",self.progressView.progressValue);
    if (!_timer) {
        _timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(animation) userInfo:nil repeats:YES];
        [[NSRunLoop currentRunLoop]addTimer:_timer forMode:NSDefaultRunLoopMode];
    }
}
static CGFloat value = 0;
- (void)animation
{
    value += 0.1;
    
    if (value >= 1.0) {
        [_timer invalidate];
        _timer = nil;
        [self.progressView removeFromSuperview];
        value = 0;
        return;
    }
    self.progressView.progressValue = value;
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor grayColor];
}



@end
