//
//  UIView+Chain.h
//  XCChain
//
//  Created by superMan on 2017/7/25.
//  Copyright © 2017年 徐学超. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Chain)

@property (nonatomic, copy, readonly) __kindof UIView *(^mk_frame)(CGRect frame);

@property (nonatomic, copy, readonly) __kindof UIView *(^mk_bounds)(CGRect bounds);

@property (nonatomic, copy, readonly) __kindof UIView *(^mk_center)(CGPoint center);

@property (nonatomic, copy, readonly) __kindof UIView *(^mk_backgroundColor)(UIColor *backgroundColor);

@property (nonatomic, copy, readonly) __kindof UIView *(^mk_alpha)(CGFloat alpha);

@property (nonatomic, copy, readonly) __kindof UIView *(^mk_opaque)(BOOL isOpaque);

@property (nonatomic, copy, readonly) __kindof UIView *(^mk_cornerRadius)(CGFloat cornerRadius);

@property (nonatomic, copy, readonly) __kindof UIView *(^mk_transform)(CGAffineTransform transform);

@property (nonatomic, copy, readonly) __kindof UIView *(^mk_multipleTouchEnabled)(BOOL isMultipleTouchEnabled);

@property (nonatomic, copy, readonly) __kindof UIView *(^mk_exclusiveTouch)(BOOL isExclusiveTouch);

@property (nonatomic, copy, readonly) __kindof UIView *(^mk_hidden)(BOOL isHidden);

@property (nonatomic, copy, readonly) __kindof UIView *(^mk_addLayer)(CALayer *layer);

@property (nonatomic, copy, readonly) __kindof UIView *(^mk_borderColor)(UIColor *borderColor);

@property (nonatomic, copy, readonly) __kindof UIView *(^mk_borderWidth)(CGFloat borderWidth);

@property (nonatomic, copy, readonly) __kindof UIView *(^mk_addView)(__kindof UIView *);

@property (nonatomic, copy, readonly) __kindof UIView *(^mk_userInteractionEnabled)(BOOL isUserInteractionEnabled);
@property (nonatomic, copy, readonly) __kindof UIView *(^mk_tag)(NSInteger tag);

+ (instancetype)getView;

@end
