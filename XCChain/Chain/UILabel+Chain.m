//
//  UILabel+Chain.m
//  XCChain
//
//  Created by superMan on 2017/7/26.
//  Copyright © 2017年 徐学超. All rights reserved.
//

#import "UILabel+Chain.h"

@implementation UILabel (Chain)

+ (instancetype)getLabel {
    return [self new];
}

// UIView
- (__kindof UILabel *(^)(CGRect))mk_frame {
    return ^(CGRect frame) {
        self.frame = frame;
        return self;
    };
}

- (__kindof UILabel *(^)(CGRect))mk_bounds {
    return ^(CGRect bounds) {
        self.bounds = bounds;
        return self;
    };
}

- (__kindof UILabel *(^)(CGPoint))mk_center {
    return ^(CGPoint center) {
        self.center = center;
        return self;
    };
}

- (__kindof UILabel *(^)(UIColor *))mk_backgroundColor {
    return ^(UIColor *backGroundColor) {
        self.backgroundColor = backGroundColor;
        return self;
    };
}

- (__kindof UILabel *(^)(CGFloat))mk_alpha {
    return ^(CGFloat alpha) {
        self.alpha = alpha;
        return self;
    };
}

- (__kindof UILabel *(^)(BOOL))mk_opaque {
    return ^(BOOL isOpaque) {
        self.opaque = isOpaque;
        return self;
    };
}

- (__kindof UILabel *(^)(CGFloat))mk_cornerRadius {
    return ^(CGFloat cornerRadius) {
        self.clipsToBounds = YES;
        self.layer.cornerRadius = cornerRadius;
        return self;
    };
}

- (__kindof UILabel *(^)(CGAffineTransform))mk_transform {
    return ^(CGAffineTransform transform) {
        self.transform = transform;
        return self;
    };
}

- (__kindof UILabel *(^)(BOOL))mk_multipleTouchEnabled {
    return ^(BOOL isMultipleTouchEnabled) {
        self.multipleTouchEnabled = isMultipleTouchEnabled;
        return self;
    };
}

- (__kindof UILabel *(^)(BOOL))mk_exclusiveTouch {
    return ^(BOOL isExclusiveTouch) {
        self.exclusiveTouch = isExclusiveTouch;
        return self;
    };
}

- (__kindof UILabel *(^)(BOOL))mk_hidden {
    return ^(BOOL isHidden) {
        self.hidden = isHidden;
        return self;
    };
}

- (__kindof UILabel *(^)(CALayer *))mk_addLayer {
    return ^(CALayer *layer) {
        [self.layer addSublayer:layer];
        return self;
    };
}

- (__kindof UILabel *(^)(UIColor *))mk_borderColor {
    return ^(UIColor *borderColor) {
        self.layer.borderColor = borderColor.CGColor;
        return self;
    };
}

- (__kindof UILabel *(^)(CGFloat))mk_borderWidth {
    return ^(CGFloat borderWidth) {
        self.layer.borderWidth = borderWidth;
        return self;
    };
}

- (__kindof UILabel *(^)(__kindof UIView *))mk_addView {
    return ^(__kindof UIView *subview) {
        [self addSubview:subview];
        return self;
    };
}

- (__kindof UILabel *(^)(BOOL))mk_userInteractionEnabled {
    return ^(BOOL isUserInteractionEnabled) {
        self.userInteractionEnabled = isUserInteractionEnabled;
        return self;
    };
}

- (__kindof UILabel *(^)(NSInteger))mk_tag {
    return ^(NSInteger tag) {
        self.tag = tag;
        return self;
    };
}

//UILabel
- (__kindof UILabel *(^)(NSTextAlignment))mk_textAligenment {
    return ^(NSTextAlignment textAlignment) {
        self.textAlignment = textAlignment;
        return self;
    };
}

-(__kindof UILabel *(^)(UIColor *))mk_textColor {
    return ^(UIColor *textColor) {
        self.textColor = textColor;
        return self;
    };
}

- (__kindof UILabel *(^)(NSString *))mk_text {
    return ^(NSString *text) {
        self.text = text;
        return self;
    };
}

- (__kindof UILabel *(^)(NSLineBreakMode))mk_lineBreakMode {
    return ^(NSLineBreakMode lineBreakMode) {
        self.lineBreakMode = lineBreakMode;
        return self;
    };
}

- (__kindof UILabel *(^)(NSAttributedString *))mk_attributedText {
    return ^(NSAttributedString *attributedText) {
        self.attributedText = attributedText;
        return self;
    };
}

- (__kindof UILabel *(^)(NSInteger))mk_numberOfLines {
    return ^(NSInteger numberOfLines) {
        self.numberOfLines = numberOfLines;
        return self;
    };
}

- (__kindof UILabel *(^)(CGFloat))mk_font {
    return ^(CGFloat font) {
        self.font = [UIFont systemFontOfSize:font];
        return self;
    };
}

- (__kindof UILabel *(^)(UIColor *))mk_shadowColor {
    return ^(UIColor *shadowColor) {
        self.shadowColor = shadowColor;
        return self;
    };
}

- (__kindof UILabel *(^)(CGSize))mk_shadowOffset {
    return ^(CGSize shadowOffset) {
        self.shadowOffset = shadowOffset;
        return self;
    };
}

- (__kindof UILabel *(^)(UIColor *))mk_highlightedTextColor {
    return ^(UIColor *highlightedTextColor) {
        self.highlightedTextColor = highlightedTextColor;
        return self;
    };
}

- (__kindof UILabel *(^)(BOOL))mk_highlighted {
    return ^(BOOL isHighlighted) {
        self.highlighted = isHighlighted;
        return self;
    };
}

- (__kindof UILabel *(^)(BOOL))mk_enabled {
    return ^(BOOL isEnabled) {
        self.enabled = isEnabled;
        return self;
    };
}

@end
