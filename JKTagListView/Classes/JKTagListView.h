//
//  JKTagListView.h
//  JKTagListView
//
//  Created by 김정근 on 2016. 8. 31..
//  Copyright © 2016년 김정근. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JKTagListView : UIView

@property (assign, nonatomic) CGFloat tagPaddingX;
@property (assign, nonatomic) CGFloat tagPaddingY;
@property (assign, nonatomic) CGFloat tagCornerWidth;
@property (assign, nonatomic) CGFloat tagBorderWidth;
@property (strong, nonatomic) UIColor *tagBorderColor;
@property (strong, nonatomic) UIColor *tagBackgroundColor;
@property (strong, nonatomic) UIColor *tagNormalTitleColor;
@property (strong, nonatomic) UIColor *tagTappedTitleColor;
@property (strong, nonatomic) UIFont *tagTitleFont;

@property (assign, nonatomic) CGFloat marginX;
@property (assign, nonatomic) CGFloat marginY;

- (void)addTags:(NSArray *)tags;
- (void)addTag:(NSString *)tag;
- (void)removeAllTags;

@end
