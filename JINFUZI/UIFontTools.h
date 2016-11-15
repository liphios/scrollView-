//
//  UIFontTools.h
//  GOLA
//
//  Created by Mac on 16/3/27.
//  Copyright © 2016年 userMatou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface UIFontTools : NSObject
+(UIFontTools *)defaultUIFontTool;

//通用功能字体定义
-(UIFont *)titleFont;
-(UIFont *)inputFont;
-(UIFont *)rightTopButtonFont;
-(UIFont *)leftTopButtonFont;
-(UIFont *)bottomFunctionButtonFont;

//注册登陆忘记密码相关字体定义
-(UIFont *)inviteCodeInputFont;
-(UIFont *)loginFunctionButtonFont;
-(UIFont *)forgetPWDButtonFont;
-(UIFont *)thirdRegistAndLoginFont;
-(UIFont *)userProtocalFont;

//发现功能字体定义大小
-(UIFont *)foundListNameFont;
-(UIFont *)foundListContentFont;
-(UIFont *)foundListLocationFont;
-(UIFont *)foundListTimeFont;

//发现详情页面字体定义大小
-(UIFont *)foundDetailLabelFont;
-(UIFont *)foundDetailContentFont;
-(UIFont *)foundDetailTimeFont;

-(UIFont *)dynamicNavViewTitleFont1;
-(UIFont *)dynamicnavViewNumberFont;

//发现评论字体定义大小
-(UIFont *)foundCommendNumFont;
-(UIFont *)foundCommendUserNameFont;
-(UIFont *)foundCommendTimeFont;
-(UIFont *)foundCommendContentFont;
-(UIFont *)foundCommendInputFont;

//专栏字体定义大小
-(UIFont *)columnTopCategoryFont;
-(UIFont *)columnListCategoryLabelFont;
-(UIFont *)columnListCategoryContentFont;

-(UIFont *)columnDetailContentLabelFont;
-(UIFont *)columnDetailContentFont;

//我的
-(UIFont *)mineUserNickNameFont;
-(UIFont *)mineClassFont;
-(UIFont *)mineEnergyNumberFont;
-(UIFont *)mineEnergyFont;
-(UIFont *)mineKissMeFont;
-(UIFont *)mineFansFont;
-(UIFont *)mineFollowFont;
-(UIFont *)mineKissMeNumberFont;
-(UIFont *)mineFansNumberFont;
-(UIFont *)mineFollowNumberFont;
-(UIFont *)mineNewKissFont;
-(UIFont *)mineNewFansFont;
-(UIFont *)mineNewFollowFont;
-(UIFont *)mineCellTitleFont;

//设置
-(UIFont *)settingCellTitleFont;
-(UIFont *)settingCellContentFont;
-(UIFont *)settingCellEndFont;
//用户验证
-(UIFont *)verifyUserTipFont;
-(UIFont *)verifyInputFont;
-(UIFont *)verifyCodeFont;
-(UIFont *)verifyBindingButtonFont;
-(UIFont *)verifyUserProtocal;

//推送设置
-(UIFont *)pushSettingCellFont;

//FAQ
-(UIFont *)faqCellFont;

//小功能
-(UIFont *)smallFunctionNumberFont;
-(UIFont *)smallFunctionTitleFont;
-(UIFont *)smallFunctionContentFont;

//我的资料
-(UIFont *)myInfoPhotoTitleFont;
-(UIFont *)myInfoCellTitleFont;
-(UIFont *)myInfoCellContentFont;
-(UIFont *)myInfoDesFont;
-(UIFont *)myInfoDesFrameFont;

//翻牌子
-(UIFont *)selectedDescripetionTitleFont;
-(UIFont *)selectedDescripetionContentFont;
-(UIFont *)selectedDescripetionLeftNumberFont;

//情感状态选择 角色 职业
-(UIFont *)relationshipStatusFont;

//个人描述
-(UIFont *)tagSelectTitleFont;
-(UIFont *)tagSelectSubTitleFont;
-(UIFont *)tagItemFont;

//吻我列表  粉丝列表  关注列表
-(UIFont *)searchInputFont;
-(UIFont *)listNameFont;
-(UIFont *)listClassFont;
-(UIFont *)listDescFont;

//动态列表
-(UIFont *)dynamicMonthFont;
-(UIFont *)dynamicDayFont;
-(UIFont *)dynamicContentFont;
-(UIFont *)dynamicTimeFont;
-(UIFont *)dynamicLikeFont;
-(UIFont *)dynamicCommentFont;

//收藏列表 --- 同于专栏分类的界面处理

//发布--文本
-(UIFont *)publishLocationFont;
-(UIFont *)publishPushFont;
-(UIFont *)publishPlaceHolderFont;
-(UIFont *)publishTextViewFont;
-(UIFont *)publishPushToGOLAFont;
-(UIFont *)publishLabelFont;
-(UIFont *)publishPrivateOrPublicFont;

//发布--秀图--图片选择页
-(UIFont *)picSelectPreScanFont;
-(UIFont *)picSelectNumberFont;
-(UIFont *)picSeletConfirmFont;
//-(UIFont *)publishPic

//发布--秀图
-(UIFont *)publishInputTitleFont;
-(UIFont *)publishInputSubTitleFont;

//关于Gola
-(UIFont *)aboutGolaFont;

//消息相关

//聊天界面
-(UIFont *)chatUserNameFont;
-(UIFont *)chatFollowRelationStatusFont;
-(UIFont *)chatNewMsgFont;
-(UIFont *)chatInputFont;
-(UIFont *)chatContentFont;
-(UIFont *)chatListDetailFont;
@end
