//
//  JKTagView.h
//  JKTagListView
//
//  Created by 김정근 on 2016. 8. 31..
//  Copyright © 2016년 김정근. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JKTagView : UIButton

// setter

- (void)setCornerRadius:(CGFloat)cornerRadius;
- (void)setBorderColor:(UIColor *)borderColor;
- (void)setBorderWidth:(CGFloat)borderWidth;
- (void)setTitleFont:(UIFont *)font;
- (void)setPadding:(UIEdgeInsets)padding;


// initialize
- (instancetype)initWithTitle:(NSString *)title;
- (instancetype)init NS_UNAVAILABLE;

@end
