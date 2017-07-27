//
//  UIButton+Chain.m
//  XCChain
//
//  Created by superMan on 2017/7/25.
//  Copyright © 2017年 徐学超. All rights reserved.
//

#import "UIButton+Chain.h"

@implementation UIButton (Chain)

+ (instancetype)getButton {
    return [self buttonWithType:UIButtonTypeCustom];
}

// UIView
- (__kindof UIButton *(^)(CGRect))mk_frame {
    return ^(CGRect frame) {
        self.frame = frame;
        return self;
    };
}

- (__kindof UIButton *(^)(CGRect))mk_bounds {
    return ^(CGRect bounds) {
        self.bounds = bounds;
        return self;
    };
}

- (__kindof UIButton *(^)(CGPoint))mk_center {
    return ^(CGPoint center) {
        self.center = center;
        return self;
    };
}

- (__kindof UIButton *(^)(UIColor *))mk_backgroundColor {
    return ^(UIColor *backGroundColor) {
        self.backgroundColor = backGroundColor;
        return self;
    };
}

- (__kindof UIButton *(^)(CGFloat))mk_alpha {
    return ^(CGFloat alpha) {
        self.alpha = alpha;
        return self;
    };
}

- (__kindof UIButton *(^)(BOOL))mk_opaque {
    return ^(BOOL isOpaque) {
        self.opaque = isOpaque;
        return self;
    };
}

- (__kindof UIButton *(^)(CGFloat))mk_cornerRadius {
    return ^(CGFloat cornerRadius) {
        self.clipsToBounds = YES;
        self.layer.cornerRadius = cornerRadius;
        return self;
    };
}

- (__kindof UIButton *(^)(CGAffineTransform))mk_transform {
    return ^(CGAffineTransform transform) {
        self.transform = transform;
        return self;
    };
}

- (__kindof UIButton *(^)(BOOL))mk_multipleTouchEnabled {
    return ^(BOOL isMultipleTouchEnabled) {
        self.multipleTouchEnabled = isMultipleTouchEnabled;
        return self;
    };
}

- (__kindof UIButton *(^)(BOOL))mk_exclusiveTouch {
    return ^(BOOL isExclusiveTouch) {
        self.exclusiveTouch = isExclusiveTouch;
        return self;
    };
}

- (__kindof UIButton *(^)(BOOL))mk_hidden {
    return ^(BOOL isHidden) {
        self.hidden = isHidden;
        return self;
    };
}

- (__kindof UIButton *(^)(CALayer *))mk_addLayer {
    return ^(CALayer *layer) {
        [self.layer addSublayer:layer];
        return self;
    };
}

- (__kindof UIButton *(^)(UIColor *))mk_borderColor {
    return ^(UIColor *borderColor) {
        self.layer.borderColor = borderColor.CGColor;
        return self;
    };
}

- (__kindof UIButton *(^)(CGFloat))mk_borderWidth {
    return ^(CGFloat borderWidth) {
        self.layer.borderWidth = borderWidth;
        return self;
    };
}

- (__kindof UIButton *(^)(__kindof UIView *))mk_addView {
    return ^(__kindof UIView *subview) {
        [self addSubview:subview];
        return self;
    };
}

- (__kindof UIButton *(^)(BOOL))mk_userInteractionEnabled {
    return ^(BOOL isUserInteractionEnabled) {
        self.userInteractionEnabled = isUserInteractionEnabled;
        return self;
    };
}

- (__kindof UIButton *(^)(NSInteger))mk_tag {
    return ^(NSInteger tag) {
        self.tag = tag;
        return self;
    };
}

//UIButton
- (__kindof UIButton *(^)(NSString *, UIControlState))mk_title {
    return ^(NSString *title,UIControlState state) {
        [self setTitle:title forState:state];
        return self;
    };
}

- (__kindof UIButton *(^)(UIColor *, UIControlState))mk_titleColor {
    return ^(UIColor *color,UIControlState state) {
        [self setTitleColor:color forState:state];
        return self;
    };
}

- (__kindof UIButton *(^)(UIImage *, UIControlState))mk_image {
    return ^(UIImage *image,UIControlState state) {
        [self setImage:image forState:state];
        return self;
    };
}

- (__kindof UIButton *(^)(UIImage *,UIControlState))mk_backgroundImage {
    return ^(UIImage *image,UIControlState state) {
        [self setBackgroundImage:image forState:state];
        return self;
    };
}

- (__kindof UIButton *(^)(CGFloat))mk_titleFont {
    return ^(CGFloat font) {
        self.titleLabel.font = [UIFont systemFontOfSize:font];
        return self;
    };
}

- (__kindof UIButton *(^)(BOOL))mk_enable {
    return ^(BOOL isEnable) {
        self.enabled = isEnable;
        return self;
    };
}

- (__kindof UIButton *(^)(BOOL))mk_selected {
    return ^(BOOL isSelected) {
        self.selected = isSelected;
        return self;
    };
}

//如果希望按钮只点击图片和文字响应可以重写htiTest:withEvent:方法
//- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
//    if (CGRectContainsPoint(self.imageView.frame, point) || CGRectContainsPoint(self.titleLabel.frame, point)) {
//        return self;
//    }
//    return nil;
//}

@end
