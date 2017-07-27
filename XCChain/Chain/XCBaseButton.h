//
//  XCBaseButton.h
//  XCChain
//
//  Created by superMan on 2017/7/26.
//  Copyright © 2017年 徐学超. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XCBaseButton : UIButton

@property (nonatomic, copy) void(^buttonClick)(__kindof UIButton *button);

- (__kindof UIButton *)buttonClickWithComplation:(void(^)(__kindof UIButton *button))complation;

@end
