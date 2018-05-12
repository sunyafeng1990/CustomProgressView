//
//  UIImageView+Property.m
//  CustomProgressView
//
//  Created by lemo on 2018/5/12.
//  Copyright © 2018年 孙亚锋. All rights reserved.
//

#import "UIImageView+Property.h"
#import <objc/runtime.h>

static char progressValue;

@implementation UIImageView (Property)

- (CGFloat)progressValue
{
    return [objc_getAssociatedObject(self, &progressValue) floatValue];
}
- (void)setProgressValue:(CGFloat)progressValue
{
    objc_setAssociatedObject(self, &progressValue, [NSString stringWithFormat:@"%f",progressValue], OBJC_ASSOCIATION_COPY);
    NSLog(@"p-%f",progressValue);
    if (progressValue == 0.0) {
        [self setImage:[UIImage imageNamed:@"download0"]];
    }else if (0.0<progressValue <=0.1) {
        [self setImage:[UIImage imageNamed:@"download1"]];
    }else if (0.1<progressValue <= 0.2){
        [self setImage:[UIImage imageNamed:@"download2"]];
    }else if (0.2<progressValue <=0.3){
        [self setImage:[UIImage imageNamed:@"download3"]];
    }else if (0.3<progressValue <=0.4){
        [self setImage:[UIImage imageNamed:@"download4"]];
    }else if (0.4<progressValue <=0.5){
        [self setImage:[UIImage imageNamed:@"download5"]];
    }else if (0.5<progressValue <=0.6){
        [self setImage:[UIImage imageNamed:@"download6"]];
    }else if (0.7<progressValue <=0.8){
        [self setImage:[UIImage imageNamed:@"download7"]];
    }else if (0.8<progressValue <=0.9){
        [self setImage:[UIImage imageNamed:@"download8"]];
    }else if (0.9<progressValue <1.0){
        [self setImage:[UIImage imageNamed:@"download9"]];
    }else{
        [self setImage:[UIImage imageNamed:@"download10"]];
    }
}

@end
