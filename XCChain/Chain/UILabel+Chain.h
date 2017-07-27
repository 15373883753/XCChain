//
//  UILabel+Chain.h
//  XCChain
//
//  Created by superMan on 2017/7/26.
//  Copyright © 2017年 徐学超. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (Chain)

// UIView
@property (nonatomic, copy, readonly) __kindof UILabel *(^mk_frame)(CGRect frame);
@property (nonatomic, copy, readonly) __kindof UILabel *(^mk_bounds)(CGRect bounds);
@property (nonatomic, copy, readonly) __kindof UILabel *(^mk_center)(CGPoint center);
@property (nonatomic, copy, readonly) __kindof UILabel *(^mk_backgroundColor)(UIColor *backgroundColor);
@property (nonatomic, copy, readonly) __kindof UILabel *(^mk_alpha)(CGFloat alpha);
@property (nonatomic, copy, readonly) __kindof UILabel *(^mk_opaque)(BOOL isOpaque);
@property (nonatomic, copy, readonly) __kindof UILabel *(^mk_cornerRadius)(CGFloat cornerRadius);
@property (nonatomic, copy, readonly) __kindof UILabel *(^mk_transform)(CGAffineTransform transform);
@property (nonatomic, copy, readonly) __kindof UILabel *(^mk_multipleTouchEnabled)(BOOL isMultipleTouchEnabled);
@property (nonatomic, copy, readonly) __kindof UILabel *(^mk_exclusiveTouch)(BOOL isExclusiveTouch);
@property (nonatomic, copy, readonly) __kindof UILabel *(^mk_hidden)(BOOL isHidden);
@property (nonatomic, copy, readonly) __kindof UILabel *(^mk_addLayer)(CALayer *layer);
@property (nonatomic, copy, readonly) __kindof UILabel *(^mk_borderColor)(UIColor *borderColor);
@property (nonatomic, copy, readonly) __kindof UILabel *(^mk_borderWidth)(CGFloat borderWidth);
@property (nonatomic, copy, readonly) __kindof UILabel *(^mk_addView)(__kindof UIView *);
@property (nonatomic, copy, readonly) __kindof UILabel *(^mk_userInteractionEnabled)(BOOL isUserInteractionEnabled);
@property (nonatomic, copy, readonly) __kindof UILabel *(^mk_tag)(NSInteger tag);
//UILabel
@property (nonatomic, copy, readonly) __kindof UILabel *(^mk_textAligenment)(NSTextAlignment textAlignment);
@property (nonatomic, copy, readonly) __kindof UILabel *(^mk_textColor)(UIColor *textColor);
@property (nonatomic, copy, readonly) __kindof UILabel *(^mk_text)(NSString *text);
@property (nonatomic, copy, readonly) __kindof UILabel *(^mk_lineBreakMode)(NSLineBreakMode lineBreakMode);
@property (nonatomic, copy, readonly) __kindof UILabel *(^mk_attributedText)(NSAttributedString * attributedText);
@property (nonatomic, copy, readonly) __kindof UILabel *(^mk_numberOfLines)(NSInteger numberOfLines);
@property (nonatomic, copy, readonly) __kindof UILabel *(^mk_font)(CGFloat font);
@property (nonatomic, copy, readonly) __kindof UILabel *(^mk_shadowColor)(UIColor *shadowColor);
@property (nonatomic, copy, readonly) __kindof UILabel *(^mk_shadowOffset)(CGSize shadowOffset);
@property (nonatomic, copy, readonly) __kindof UILabel *(^mk_highlightedTextColor)(UIColor *highlightedTextColor);
@property (nonatomic, copy, readonly) __kindof UILabel *(^mk_highlighted)(BOOL isHighlighted);
@property (nonatomic, copy, readonly) __kindof UILabel *(^mk_enabled)(BOOL isEnabled);

+ (instancetype)getLabel;

@end
