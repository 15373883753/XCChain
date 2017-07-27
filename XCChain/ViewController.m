//
//  ViewController.m
//  XCChain
//
//  Created by superMan on 2017/7/25.
//  Copyright © 2017年 徐学超. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

/*****
 1.如果用相对布局，完全可以通过用.mk_frame();而如果用开源框架Masonry的话,是不是感觉格式很统一。
 2.感谢开源框架Masonry，BabyBluetooth框架作者，这种设置思想来源于作者开源框架作者。
 3.感谢所有开源作者，没有他们的无私付出，就不会有现在大家学习环境
 4.本文只是实现基本的链式编程的思想，里面的方法不太完整，欢迎大家交流与补充
 *****/

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *view = [UIView getView]
    .mk_center(self.view.center)
    .mk_bounds(CGRectMake(0, 0, Main_Screen_Width, AdaptedHeight(400)))
    .mk_backgroundColor(HEXCOLOR(0x999999));
    self.view.mk_addView(view);
    
    UILabel *label = [UILabel getLabel]
    .mk_frame(CGRectMake(0, 0, Main_Screen_Width, AdaptedHeight(40)))
    .mk_textColor(HEXCOLOR(0x000000))
    .mk_backgroundColor([UIColor redColor])
    .mk_text(@"标题")
    .mk_textAligenment(NSTextAlignmentCenter);
    
    XCBaseButton *xcBtn = [[XCBaseButton getButton] buttonClickWithComplation:^(__kindof UIButton *button) {
        //MARK: 按钮点击事件
        button.selected = !button.selected;
    }]
    .mk_frame(CGRectMake(AdaptedWidth(30), CGRectGetMaxY(label.frame)+AdaptedHeight(30), Main_Screen_Width-2*AdaptedWidth(30), AdaptedHeight(100)))
    .mk_title(@"没有选中我", UIControlStateNormal)
    .mk_titleFont(20)
    .mk_title(@"选中了我",UIControlStateSelected)
    .mk_backgroundColor(HEXCOLOR(0x333333))
    .mk_titleColor(HEXCOLOR(0xffffff),UIControlStateNormal)
    .mk_titleColor(HEXCOLOR(0xdfdfdf),UIControlStateSelected)
    .mk_cornerRadius(15.f);
    
    view
    .mk_addView(label)
    .mk_addView(xcBtn);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
