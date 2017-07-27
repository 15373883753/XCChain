//
//  XCBaseButton.m
//  XCChain
//
//  Created by superMan on 2017/7/26.
//  Copyright © 2017年 徐学超. All rights reserved.
//

#import "XCBaseButton.h"

@implementation XCBaseButton

- (__kindof UIButton *)buttonClickWithComplation:(void (^)(__kindof UIButton *))complation {
    [self addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    self.buttonClick = complation;
    return self;
}

- (void)btnClick:(UIButton *)button {
    if (self.buttonClick) {
        self.buttonClick(button);
    }
}
- (void)setButtonClick:(void (^)(__kindof UIButton *))buttonClick {
    _buttonClick = buttonClick;
    [self addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
}


@end
