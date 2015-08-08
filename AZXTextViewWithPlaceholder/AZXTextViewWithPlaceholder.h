//
//  AZXTextView.h
//  AZX百思不得姐
//
//  Created by Azen.Xu on 15/8/5.
//  Copyright (c) 2015年 Azen.Xu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AZXTextViewWithPlaceholder : UITextView

/** 占位文字颜色*/
@property(strong,nonatomic) UIColor *placeholderColor;
/** 占位文字字体*/
@property(strong,nonatomic) UIFont *placeholderFont;
/** 占位文字*/
@property(strong,nonatomic) NSString *placeholder;


@end
