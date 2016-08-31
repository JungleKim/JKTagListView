//
//  JKTagView.m
//  JKTagListView
//
//  Created by 김정근 on 2016. 8. 31..
//  Copyright © 2016년 김정근. All rights reserved.
//

#import "JKTagView.h"

@interface JKTagView ()

@end

@implementation JKTagView

- (instancetype)initWithTitle:(NSString *)title
{
    self = [super init];
    
    if (self) {
        self.titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        [self setTitle:title forState:UIControlStateNormal];
    }
    
    return self;
}

#pragma mark - Setter

- (void)setCornerRadius:(CGFloat)cornerRadius
{
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = (cornerRadius > 0);
}

- (void)setBorderColor:(UIColor *)borderColor
{
    self.layer.borderColor = borderColor.CGColor;
}

- (void)setBorderWidth:(CGFloat)borderWidth
{
    self.layer.borderWidth = borderWidth;
}

- (void)setTitleFont:(UIFont *)font
{
    self.titleLabel.font = font;
}

- (void)setPadding:(UIEdgeInsets)padding
{
    self.contentEdgeInsets = padding;
}

@end
