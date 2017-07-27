//
//  UIButton+Chain.h
//  XCChain
//
//  Created by superMan on 2017/7/25.
//  Copyright © 2017年 徐学超. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Chain)

// UIView
@property (nonatomic, copy, readonly) __kindof UIButton *(^mk_frame)(CGRect frame);
@property (nonatomic, copy, readonly) __kindof UIButton *(^mk_bounds)(CGRect bounds);
@property (nonatomic, copy, readonly) __kindof UIButton *(^mk_center)(CGPoint center);
@property (nonatomic, copy, readonly) __kindof UIButton *(^mk_backgroundColor)(UIColor *backgroundColor);
@property (nonatomic, copy, readonly) __kindof UIButton *(^mk_alpha)(CGFloat alpha);
@property (nonatomic, copy, readonly) __kindof UIButton *(^mk_opaque)(BOOL isOpaque);
@property (nonatomic, copy, readonly) __kindof UIButton *(^mk_cornerRadius)(CGFloat cornerRadius);
@property (nonatomic, copy, readonly) __kindof UIButton *(^mk_transform)(CGAffineTransform transform);
@property (nonatomic, copy, readonly) __kindof UIButton *(^mk_multipleTouchEnabled)(BOOL isMultipleTouchEnabled);
@property (nonatomic, copy, readonly) __kindof UIButton *(^mk_exclusiveTouch)(BOOL isExclusiveTouch);
@property (nonatomic, copy, readonly) __kindof UIButton *(^mk_hidden)(BOOL isHidden);
@property (nonatomic, copy, readonly) __kindof UIButton *(^mk_addLayer)(CALayer *layer);
@property (nonatomic, copy, readonly) __kindof UIButton *(^mk_borderColor)(UIColor *borderColor);
@property (nonatomic, copy, readonly) __kindof UIButton *(^mk_borderWidth)(CGFloat borderWidth);
@property (nonatomic, copy, readonly) __kindof UIButton *(^mk_addView)(__kindof UIView *);
@property (nonatomic, copy, readonly) __kindof UIButton *(^mk_userInteractionEnabled)(BOOL isUserInteractionEnabled);
@property (nonatomic, copy, readonly) __kindof UIButton *(^mk_tag)(NSInteger tag);
// UIButton
@property (nonatomic, copy, readonly) __kindof UIButton *(^mk_title)(NSString *title,UIControlState state);
@property (nonatomic, copy, readonly) __kindof UIButton *(^mk_titleColor)(UIColor *color,UIControlState state);
@property (nonatomic, copy, readonly) __kindof UIButton *(^mk_image)(UIImage *image,UIControlState state);
@property (nonatomic, copy, readonly) __kindof UIButton *(^mk_backgroundImage)(UIImage *image,UIControlState state);
@property (nonatomic, copy, readonly) __kindof UIButton *(^mk_titleFont)(CGFloat font);
@property (nonatomic, copy, readonly) __kindof UIButton *(^mk_enable)(BOOL isEnable);
@property (nonatomic, copy, readonly) __kindof UIButton *(^mk_selected)(BOOL isSelected);

+ (instancetype)getButton;

@end
