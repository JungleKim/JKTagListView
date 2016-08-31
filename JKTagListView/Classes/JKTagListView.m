//
//  JKTagListView.m
//  JKTagListView
//
//  Created by 김정근 on 2016. 8. 31..
//  Copyright © 2016년 김정근. All rights reserved.
//

#import "JKTagListView.h"

// View
#import "JKTagView.h"

static CGFloat const DEFAULT_MARGIN_X = 5.0f;
static CGFloat const DEFAULT_MARGIN_Y = 5.0f;

@interface JKTagListView ()

@property (strong, nonatomic) NSMutableArray *tagViews;
@property (readonly) UIEdgeInsets padding;

@end

@implementation JKTagListView
@synthesize marginX = _marginX, marginY = _marginY;
@synthesize tagPaddingX = _tagPaddingX, tagPaddingY = _tagPaddingY,
    tagCornerWidth = _tagCornerWidth, tagBorderWidth = _tagBorderWidth, tagBorderColor = _tagBorderColor,
    tagBackgroundColor = _tagBackgroundColor, tagNormalTitleColor = _tagNormalTitleColor, tagTappedTitleColor = _tagTappedTitleColor,
    tagTitleFont = _tagTitleFont;


- (instancetype)init
{
    self = [super init];
    
    if (self) {
        _marginX = DEFAULT_MARGIN_X;
        _marginY = DEFAULT_MARGIN_Y;
        _tagViews = @[].mutableCopy;
    }
    
    return self;
}


#pragma mark - Layout

- (CGSize)intrinsicContentSize
{
    CGFloat height = 0;
    if(_tagViews.count > 0) {
        height = CGRectGetMaxY(((JKTagView *)_tagViews.lastObject).frame);
    }

    return CGSizeMake(CGRectGetWidth(self.frame), height);
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    [self arrangeTagViews];
}

#pragma mark - TagListView

- (void)arrangeTagViews
{
    CGFloat maxWidth = CGRectGetWidth(self.frame);
    CGFloat x = .0f, y = .0f;
    for (JKTagView *tagView in _tagViews) {
        CGSize tagViewSize = [tagView intrinsicContentSize];
        
        if (maxWidth < x + _marginX + tagViewSize.width) {
            x = 0;
            y += _marginY + tagViewSize.height;
        }
        
        tagView.frame = CGRectMake(x, y,
                                   MIN(maxWidth, tagViewSize.width),
                                   tagViewSize.height);
        
        x += _marginX + tagViewSize.width;
    }
    
    [self invalidateIntrinsicContentSize];
}

- (void)removeAllTags
{
    for (UIView *view in _tagViews) {
        [view removeFromSuperview];
    }
    
    [_tagViews removeAllObjects];
    [self arrangeTagViews];
}

- (void)addTags:(NSArray *)tags
{
    for (NSString *tag in tags) {
        [self addTag:tag];
    }
}

- (void)addTag:(NSString *)tag
{
    JKTagView *tagView = [self makeTagView:tag];
    [_tagViews addObject:tagView];
    [self addSubview:tagView];
    
    [self arrangeTagViews];
}

- (JKTagView *)makeTagView:(NSString *)title
{
    JKTagView *tagView = [[JKTagView alloc] initWithTitle:title];
    
    // Setting TagInfo
    [tagView setBackgroundColor:self.tagBackgroundColor];
    [tagView setTitleColor:self.tagNormalTitleColor forState:UIControlStateNormal];
    [tagView setTitleColor:self.tagTappedTitleColor forState:UIControlStateHighlighted];
    [tagView setBorderColor:self.tagBorderColor];
    [tagView setBorderWidth:self.tagBorderWidth];
    [tagView setCornerRadius:self.tagCornerWidth];
    [tagView setTitleFont:self.tagTitleFont];
    [tagView setPadding:self.padding];
    //
    
    return tagView;
}


#pragma mark - Setter

- (void)setTagBackgroundColor:(UIColor *)tagBackgroundColor
{
    _tagBackgroundColor = tagBackgroundColor;
    for (JKTagView *tagView in _tagViews) {
        [tagView setBackgroundColor: self.tagBackgroundColor];
    }
}

- (void)setTagNormalTitleColor:(UIColor *)tagNormalTitleColor
{
    _tagNormalTitleColor = tagNormalTitleColor;
    for (JKTagView *tagView in _tagViews) {
        [tagView setTitleColor:self.tagNormalTitleColor forState:UIControlStateNormal];
    }
}

- (void)setTagTappedTitleColor:(UIColor *)tagTappedTitleColor
{
    _tagTappedTitleColor = tagTappedTitleColor;
    for (JKTagView *tagView in _tagViews) {
        [tagView setTitleColor:self.tagTappedTitleColor forState:UIControlStateHighlighted];
    }
}

- (void)setTagBorderColor:(UIColor *)tagBorderColor
{
    _tagBorderColor = tagBorderColor;
    for (JKTagView *tagView in _tagViews) {
        [tagView setBorderColor:self.tagBorderColor];
    }
}

- (void)setTagBorderWidth:(CGFloat)tagBorderWidth
{
    _tagBorderWidth = tagBorderWidth;
    for (JKTagView *tagView in _tagViews) {
        [tagView setBorderWidth:self.tagBorderWidth];
    }
}

- (void)setTagCornerWidth:(CGFloat)tagCornerWidth
{
    _tagCornerWidth = tagCornerWidth;
    for (JKTagView *tagView in _tagViews) {
        [tagView setCornerRadius:self.tagCornerWidth];
    }
}

- (void)setTagTitleFont:(UIFont *)tagTitleFont
{
    _tagTitleFont = tagTitleFont;
    for (JKTagView *tagView in _tagViews) {
        [tagView setTitleFont:self.tagTitleFont];
    }
    
    [self arrangeTagViews];
}

- (void)setTagPaddingX:(CGFloat)tagPaddingX
{
    _tagPaddingX = tagPaddingX;
    for (JKTagView *tagView in _tagViews) {
        [tagView setPadding:self.padding];
    }
    [self arrangeTagViews];
}

- (void)setTagPaddingY:(CGFloat)tagPaddingY
{
    _tagPaddingY = tagPaddingY;
    for (JKTagView *tagView in _tagViews) {
        [tagView setPadding:self.padding];
    }
    [self arrangeTagViews];
}

- (void)setMarginX:(CGFloat)marginX
{
    _marginX = marginX;
    [self arrangeTagViews];
}

- (void)setMarginY:(CGFloat)marginY
{
    _marginY = marginY;
    [self arrangeTagViews];
}

#pragma mark - Getter

- (UIColor *)tagBackgroundColor
{
    if (!_tagBackgroundColor) {
        return [UIColor whiteColor];
    }
    
    return _tagBackgroundColor;
}

- (UIColor *)tagNormalTitleColor
{
    if (!_tagNormalTitleColor) {
        return [UIColor blackColor];
    }
    
    return _tagNormalTitleColor;
}

- (UIFont *)tagTitleFont
{
    if (!_tagTitleFont) {
        return [UIFont systemFontOfSize:12.0f];
    }
    
    return _tagTitleFont;
}

- (UIEdgeInsets)padding
{
    return UIEdgeInsetsMake(_tagPaddingY, _tagPaddingX,
                            _tagPaddingY, _tagPaddingX);
}

@end
