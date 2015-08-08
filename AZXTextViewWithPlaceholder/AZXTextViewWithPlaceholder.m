//
//  AZXTextView.m
//  AZX百思不得姐
//
//  Created by Azen.Xu on 15/8/5.
//  Copyright (c) 2015年 Azen.Xu. All rights reserved.
//

#import "AZXTextViewWithPlaceholder.h"
@interface AZXTextViewWithPlaceholder()

/** UILabel*/
@property(strong,nonatomic) UILabel *placeholderLabel;

@end

@implementation AZXTextViewWithPlaceholder

#pragma mark --懒加载 Label
- (UILabel *)placeholderLabel
{
    if (_placeholderLabel == nil) {
        _placeholderLabel = [[UILabel alloc] init];
        _placeholderLabel.bounds = CGRectMake(0, 0, self.bounds.size.width - 6, 44);
        _placeholderLabel.numberOfLines = 0;
        _placeholderLabel.text = @"请输入文字";
        _placeholderLabel.textColor = [UIColor lightGrayColor];
    }
    return _placeholderLabel;
}
#pragma mark --初始化
- (void)layoutSubviews
{
    [self setup];

}

- (void)setup
{
    //  计算并设置 frame
    CGFloat height = [self.placeholderLabel.text sizeWithFont:self.placeholderLabel.font constrainedToSize:CGSizeMake(self.placeholderLabel.bounds.size.width, CGFLOAT_MAX)].height;
    CGRect frame = self.placeholderLabel.frame;
    frame.size.height = height;
    frame.origin.x = 6;
    frame.origin.y = 5;
    self.placeholderLabel.frame = frame;
    [self addSubview:self.placeholderLabel];
    
    //  监听 textView 值改变
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(didChangeText) name:UITextViewTextDidChangeNotification object:nil];
}
#pragma mark --重写 set 方法
- (void)setPlaceholder:(NSString *)placeholder
{
    _placeholder = placeholder;
    self.placeholderLabel.text = placeholder;
}

- (void)setPlaceholderColor:(UIColor *)placeholderColor
{
    _placeholderColor = placeholderColor;
    self.placeholderLabel.textColor = placeholderColor;
}

- (void)setPlaceholderFont:(UIFont *)placeholderFont
{
    _placeholderFont = placeholderFont;
    self.placeholderLabel.font = placeholderFont;
}
#pragma mark --监听值改变 & 移除监听者
- (void)didChangeText
{
    self.placeholderLabel.hidden = self.text.length > 0 ;
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
