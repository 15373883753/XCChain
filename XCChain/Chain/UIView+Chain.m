//
//  UIView+Chain.m
//  XCChain
//
//  Created by superMan on 2017/7/25.
//  Copyright © 2017年 徐学超. All rights reserved.
//

#import "UIView+Chain.h"

@implementation UIView (Chain)

+ (instancetype)getView {
    return [self new];
}

- (__kindof UIView *(^)(CGRect))mk_frame {
    return ^(CGRect frame) {
        self.frame = frame;
        return self;
    };
}

- (__kindof UIView *(^)(CGRect))mk_bounds {
    return ^(CGRect bounds) {
        self.bounds = bounds;
        return self;
    };
}

- (__kindof UIView *(^)(CGPoint))mk_center {
    return ^(CGPoint center) {
        self.center = center;
        return self;
    };
}

- (__kindof UIView *(^)(UIColor *))mk_backgroundColor {
    return ^(UIColor *backGroundColor) {
        self.backgroundColor = backGroundColor;
        return self;
    };
}

- (__kindof UIView *(^)(CGFloat))mk_alpha {
    return ^(CGFloat alpha) {
        self.alpha = alpha;
        return self;
    };
}

- (__kindof UIView *(^)(BOOL))mk_opaque {
    return ^(BOOL isOpaque) {
        self.opaque = isOpaque;
        return self;
    };
}

- (__kindof UIView *(^)(CGFloat))mk_cornerRadius {
    return ^(CGFloat cornerRadius) {
        self.clipsToBounds = YES;
        self.layer.cornerRadius = cornerRadius;
        return self;
    };
}

- (__kindof UIView *(^)(CGAffineTransform))mk_transform {
    return ^(CGAffineTransform transform) {
        self.transform = transform;
        return self;
    };
}

- (__kindof UIView *(^)(BOOL))mk_multipleTouchEnabled {
    return ^(BOOL isMultipleTouchEnabled) {
        self.multipleTouchEnabled = isMultipleTouchEnabled;
        return self;
    };
}

- (__kindof UIView *(^)(BOOL))mk_exclusiveTouch {
    return ^(BOOL isExclusiveTouch) {
        self.exclusiveTouch = isExclusiveTouch;
        return self;
    };
}

- (__kindof UIView *(^)(BOOL))mk_hidden {
    return ^(BOOL isHidden) {
        self.hidden = isHidden;
        return self;
    };
}

- (__kindof UIView *(^)(CALayer *))mk_addLayer {
    return ^(CALayer *layer) {
        [self.layer addSublayer:layer];
        return self;
    };
}

- (__kindof UIView *(^)(UIColor *))mk_borderColor {
    return ^(UIColor *borderColor) {
        self.layer.borderColor = borderColor.CGColor;
        return self;
    };
}

- (__kindof UIView *(^)(CGFloat))mk_borderWidth {
    return ^(CGFloat borderWidth) {
        self.layer.borderWidth = borderWidth;
        return self;
    };
}

- (__kindof UIView *(^)(__kindof UIView *))mk_addView {
    return ^(__kindof UIView *subview) {
        [self addSubview:subview];
        return self;
    };
}

- (__kindof UIView *(^)(BOOL))mk_userInteractionEnabled {
    return ^(BOOL isUserInteractionEnabled) {
        self.userInteractionEnabled = isUserInteractionEnabled;
        return self;
    };
}

- (__kindof UIView *(^)(NSInteger))mk_tag {
    return ^(NSInteger tag) {
        self.tag = tag;
        return self;
    };
}

@end
