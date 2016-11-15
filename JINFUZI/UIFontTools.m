//
//  UIFontTools.m
//  GOLA
//
//  Created by Mac on 16/3/27.
//  Copyright © 2016年 userMatou. All rights reserved.
//

#import "UIFontTools.h"
#define iPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)
#define iPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? (CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) || CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size)) : NO)
#define iPhone6plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? (CGSizeEqualToSize(CGSizeMake(1125, 2001), [[UIScreen mainScreen] currentMode].size) || CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size)) : NO)

@implementation UIFontTools

+ (instancetype)defaultUIFontTool {
    static UIFontTools *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

-(UIFont *)titleFont{
    UIFont * resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont boldSystemFontOfSize:16];
    }else if(iPhone6){
        resultFont = [UIFont boldSystemFontOfSize:17];
    }else if(iPhone6plus){
        resultFont = [UIFont boldSystemFontOfSize:19];
    }else {
        resultFont = [UIFont boldSystemFontOfSize:16];
    }
    return resultFont;
}

-(UIFont *)inputFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:13];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:15];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:16];
    }else {
        resultFont = [UIFont systemFontOfSize:13];
    }
    return resultFont;
}

-(UIFont *)rightTopButtonFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:13];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:15];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:16];
    }else {
        resultFont = [UIFont systemFontOfSize:13];
    }
    return resultFont;
}

-(UIFont *)leftTopButtonFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:13];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:15];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:16];
    }else {
        resultFont = [UIFont systemFontOfSize:13];
    }
    return resultFont;
}

-(UIFont *)bottomFunctionButtonFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:14];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:16];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:17];
    }else {
        resultFont = [UIFont systemFontOfSize:14];
    }
    return resultFont;
}

-(UIFont *)inviteCodeInputFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:16];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:17];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:19];
    }else {
        resultFont = [UIFont systemFontOfSize:16];
    }
    return resultFont;
}

-(UIFont *)forgetPWDButtonFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:13];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:15];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:16];
    }else {
        resultFont = [UIFont systemFontOfSize:13];
    }
    return resultFont;
}

-(UIFont *)loginFunctionButtonFont{
    UIFont * resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont boldSystemFontOfSize:16];
    }else if(iPhone6){
        resultFont = [UIFont boldSystemFontOfSize:17];
    }else if(iPhone6plus){
        resultFont = [UIFont boldSystemFontOfSize:19];
    }else {
        resultFont = [UIFont boldSystemFontOfSize:16];
    }
    return resultFont;
}

-(UIFont *)thirdRegistAndLoginFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:13];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:15];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:16];
    }else {
        resultFont = [UIFont systemFontOfSize:13];
    }
    return resultFont;
}

-(UIFont *)userProtocalFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:10];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:12];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:13];
    }else {
        resultFont = [UIFont systemFontOfSize:10];
    }
    return resultFont;
}

-(UIFont *)foundListNameFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:13];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:15];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:16];
    }else {
        resultFont = [UIFont systemFontOfSize:13];
    }
    return resultFont;
}

-(UIFont *)foundListContentFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:13];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:15];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:16];
    }else {
        resultFont = [UIFont systemFontOfSize:13];
    }
    return resultFont;
}

-(UIFont *)foundListLocationFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:10];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:11];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:12];
    }else {
        resultFont = [UIFont systemFontOfSize:10];
    }
    return resultFont;
}

-(UIFont *)foundListTimeFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:10];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:11];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:12];
    }else {
        resultFont = [UIFont systemFontOfSize:10];
    }
    return resultFont;
}

-(UIFont *)foundDetailLabelFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:13];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:15];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:16];
    }else {
        resultFont = [UIFont systemFontOfSize:13];
    }
    return resultFont;
}

-(UIFont *)foundDetailContentFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:13];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:15];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:16];
    }else {
        resultFont = [UIFont systemFontOfSize:13];
    }
    return resultFont;
}

-(UIFont *)foundDetailTimeFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:12];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:13];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:14];
    }else {
        resultFont = [UIFont systemFontOfSize:12];
    }
    return resultFont;
}

-(UIFont *)dynamicNavViewTitleFont1{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:13];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:15];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:16];
    }else {
        resultFont = [UIFont systemFontOfSize:13];
    }
    return resultFont;
}

-(UIFont *)dynamicnavViewNumberFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:11];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:12];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:13];
    }else {
        resultFont = [UIFont systemFontOfSize:11];
    }
    return resultFont;
}

-(UIFont *)foundCommendUserNameFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:13];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:15];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:16];
    }else {
        resultFont = [UIFont systemFontOfSize:13];
    }
    return resultFont;
}


-(UIFont *)foundCommendTimeFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:11];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:12];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:13];
    }else {
        resultFont = [UIFont systemFontOfSize:11];
    }
    return resultFont;
}

-(UIFont *)foundCommendContentFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:13];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:14];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:15];
    }else {
        resultFont = [UIFont systemFontOfSize:13];
    }
    return resultFont;
}


-(UIFont *)columnTopCategoryFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont boldSystemFontOfSize:11];
    }else if(iPhone6){
        resultFont = [UIFont boldSystemFontOfSize:12];
    }else if(iPhone6plus){
        resultFont = [UIFont boldSystemFontOfSize:13];
    }else {
        resultFont = [UIFont boldSystemFontOfSize:11];
    }
    return resultFont;
}

-(UIFont *)columnListCategoryLabelFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:12];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:13];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:14];
    }else {
        resultFont = [UIFont systemFontOfSize:12];
    }
    return resultFont;
}

-(UIFont *)columnListCategoryContentFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont boldSystemFontOfSize:16];
    }else if(iPhone6){
        resultFont = [UIFont boldSystemFontOfSize:17];
    }else if(iPhone6plus){
        resultFont = [UIFont boldSystemFontOfSize:19];
    }else {
        resultFont = [UIFont boldSystemFontOfSize:16];
    }
    return resultFont;
}

-(UIFont *)columnDetailContentLabelFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }else if(iPhone6){
        resultFont = [UIFont boldSystemFontOfSize:15];
    }else if(iPhone6plus){
        resultFont = [UIFont boldSystemFontOfSize:16];
    }else {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }
    return resultFont;
}

-(UIFont *)columnDetailContentFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }else if(iPhone6){
        resultFont = [UIFont boldSystemFontOfSize:15];
    }else if(iPhone6plus){
        resultFont = [UIFont boldSystemFontOfSize:16];
    }else {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }
    return resultFont;
}

-(UIFont *)mineUserNickNameFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }else if(iPhone6){
        resultFont = [UIFont boldSystemFontOfSize:15];
    }else if(iPhone6plus){
        resultFont = [UIFont boldSystemFontOfSize:16];
    }else {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }
    return resultFont;
}

-(UIFont *)mineClassFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }else if(iPhone6){
        resultFont = [UIFont boldSystemFontOfSize:15];
    }else if(iPhone6plus){
        resultFont = [UIFont boldSystemFontOfSize:16];
    }else {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }
    return resultFont;
}

-(UIFont *)mineEnergyNumberFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont boldSystemFontOfSize:12];
    }else if(iPhone6){
        resultFont = [UIFont boldSystemFontOfSize:13];
    }else if(iPhone6plus){
        resultFont = [UIFont boldSystemFontOfSize:14];
    }else {
        resultFont = [UIFont boldSystemFontOfSize:12];
    }
    return resultFont;
}

-(UIFont *)mineEnergyFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont boldSystemFontOfSize:9];
    }else if(iPhone6){
        resultFont = [UIFont boldSystemFontOfSize:10];
    }else if(iPhone6plus){
        resultFont = [UIFont boldSystemFontOfSize:11];
    }else {
        resultFont = [UIFont boldSystemFontOfSize:9];
    }
    return resultFont;
}

-(UIFont *)mineKissMeFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }else if(iPhone6){
        resultFont = [UIFont boldSystemFontOfSize:15];
    }else if(iPhone6plus){
        resultFont = [UIFont boldSystemFontOfSize:16];
    }else {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }
    return resultFont;
}

-(UIFont *)mineFansFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }else if(iPhone6){
        resultFont = [UIFont boldSystemFontOfSize:15];
    }else if(iPhone6plus){
        resultFont = [UIFont boldSystemFontOfSize:16];
    }else {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }
    return resultFont;
}

-(UIFont *)mineFollowFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }else if(iPhone6){
        resultFont = [UIFont boldSystemFontOfSize:15];
    }else if(iPhone6plus){
        resultFont = [UIFont boldSystemFontOfSize:16];
    }else {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }
    return resultFont;
}

-(UIFont *)mineKissMeNumberFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }else if(iPhone6){
        resultFont = [UIFont boldSystemFontOfSize:15];
    }else if(iPhone6plus){
        resultFont = [UIFont boldSystemFontOfSize:16];
    }else {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }
    return resultFont;
}

-(UIFont *)mineFansNumberFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }else if(iPhone6){
        resultFont = [UIFont boldSystemFontOfSize:15];
    }else if(iPhone6plus){
        resultFont = [UIFont boldSystemFontOfSize:16];
    }else {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }
    return resultFont;
}

-(UIFont *)mineFollowNumberFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }else if(iPhone6){
        resultFont = [UIFont boldSystemFontOfSize:15];
    }else if(iPhone6plus){
        resultFont = [UIFont boldSystemFontOfSize:16];
    }else {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }
    return resultFont;
}

-(UIFont *)mineNewKissFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont boldSystemFontOfSize:11];
    }else if(iPhone6){
        resultFont = [UIFont boldSystemFontOfSize:12];
    }else if(iPhone6plus){
        resultFont = [UIFont boldSystemFontOfSize:13];
    }else {
        resultFont = [UIFont boldSystemFontOfSize:11];
    }
    return resultFont;
}

-(UIFont *)mineNewFansFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont boldSystemFontOfSize:11];
    }else if(iPhone6){
        resultFont = [UIFont boldSystemFontOfSize:12];
    }else if(iPhone6plus){
        resultFont = [UIFont boldSystemFontOfSize:13];
    }else {
        resultFont = [UIFont boldSystemFontOfSize:11];
    }
    return resultFont;
}

-(UIFont *)mineNewFollowFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont boldSystemFontOfSize:11];
    }else if(iPhone6){
        resultFont = [UIFont boldSystemFontOfSize:12];
    }else if(iPhone6plus){
        resultFont = [UIFont boldSystemFontOfSize:13];
    }else {
        resultFont = [UIFont boldSystemFontOfSize:11];
    }
    return resultFont;
}

-(UIFont *)mineCellTitleFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }else if(iPhone6){
        resultFont = [UIFont boldSystemFontOfSize:15];
    }else if(iPhone6plus){
        resultFont = [UIFont boldSystemFontOfSize:16];
    }else {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }
    return resultFont;
}

-(UIFont *)settingCellTitleFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }else if(iPhone6){
        resultFont = [UIFont boldSystemFontOfSize:15];
    }else if(iPhone6plus){
        resultFont = [UIFont boldSystemFontOfSize:16];
    }else {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }
    return resultFont;
}

-(UIFont *)settingCellContentFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }else if(iPhone6){
        resultFont = [UIFont boldSystemFontOfSize:15];
    }else if(iPhone6plus){
        resultFont = [UIFont boldSystemFontOfSize:16];
    }else {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }
    return resultFont;
}

-(UIFont *)settingCellEndFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }else if(iPhone6){
        resultFont = [UIFont boldSystemFontOfSize:15];
    }else if(iPhone6plus){
        resultFont = [UIFont boldSystemFontOfSize:16];
    }else {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }
    return resultFont;
}

-(UIFont *)verifyUserTipFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }else if(iPhone6){
        resultFont = [UIFont boldSystemFontOfSize:15];
    }else if(iPhone6plus){
        resultFont = [UIFont boldSystemFontOfSize:16];
    }else {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }
    return resultFont;
}

-(UIFont *)verifyInputFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }else if(iPhone6){
        resultFont = [UIFont boldSystemFontOfSize:15];
    }else if(iPhone6plus){
        resultFont = [UIFont boldSystemFontOfSize:16];
    }else {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }
    return resultFont;
}

-(UIFont *)verifyCodeFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }else if(iPhone6){
        resultFont = [UIFont boldSystemFontOfSize:15];
    }else if(iPhone6plus){
        resultFont = [UIFont boldSystemFontOfSize:16];
    }else {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }
    return resultFont;
}

-(UIFont *)verifyBindingButtonFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont boldSystemFontOfSize:16];
    }else if(iPhone6){
        resultFont = [UIFont boldSystemFontOfSize:17];
    }else if(iPhone6plus){
        resultFont = [UIFont boldSystemFontOfSize:19];
    }else {
        resultFont = [UIFont boldSystemFontOfSize:16];
    }
    return resultFont;
}

-(UIFont *)verifyUserProtocal{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont boldSystemFontOfSize:11];
    }else if(iPhone6){
        resultFont = [UIFont boldSystemFontOfSize:12];
    }else if(iPhone6plus){
        resultFont = [UIFont boldSystemFontOfSize:13];
    }else {
        resultFont = [UIFont boldSystemFontOfSize:11];
    }
    return resultFont;
}

-(UIFont *)pushSettingCellFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }else if(iPhone6){
        resultFont = [UIFont boldSystemFontOfSize:15];
    }else if(iPhone6plus){
        resultFont = [UIFont boldSystemFontOfSize:16];
    }else {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }
    return resultFont;
}

-(UIFont *)faqCellFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }else if(iPhone6){
        resultFont = [UIFont boldSystemFontOfSize:15];
    }else if(iPhone6plus){
        resultFont = [UIFont boldSystemFontOfSize:16];
    }else {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }
    return resultFont;
}

-(UIFont *)smallFunctionNumberFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }else if(iPhone6){
        resultFont = [UIFont boldSystemFontOfSize:15];
    }else if(iPhone6plus){
        resultFont = [UIFont boldSystemFontOfSize:16];
    }else {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }
    return resultFont;
}

-(UIFont *)smallFunctionTitleFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }else if(iPhone6){
        resultFont = [UIFont boldSystemFontOfSize:15];
    }else if(iPhone6plus){
        resultFont = [UIFont boldSystemFontOfSize:16];
    }else {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }
    return resultFont;
}

-(UIFont *)smallFunctionContentFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont boldSystemFontOfSize:11];
    }else if(iPhone6){
        resultFont = [UIFont boldSystemFontOfSize:12];
    }else if(iPhone6plus){
        resultFont = [UIFont boldSystemFontOfSize:13];
    }else {
        resultFont = [UIFont boldSystemFontOfSize:11];
    }
    return resultFont;
}

-(UIFont *)myInfoCellTitleFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }else if(iPhone6){
        resultFont = [UIFont boldSystemFontOfSize:15];
    }else if(iPhone6plus){
        resultFont = [UIFont boldSystemFontOfSize:16];
    }else {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }
    return resultFont;
}

-(UIFont *)myInfoCellContentFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }else if(iPhone6){
        resultFont = [UIFont boldSystemFontOfSize:15];
    }else if(iPhone6plus){
        resultFont = [UIFont boldSystemFontOfSize:16];
    }else {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }
    return resultFont;
}

-(UIFont *)myInfoPhotoTitleFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }else if(iPhone6){
        resultFont = [UIFont boldSystemFontOfSize:15];
    }else if(iPhone6plus){
        resultFont = [UIFont boldSystemFontOfSize:16];
    }else {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }
    return resultFont;
}

-(UIFont *)myInfoDesFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont boldSystemFontOfSize:10];
    }else if(iPhone6){
        resultFont = [UIFont boldSystemFontOfSize:12];
    }else if(iPhone6plus){
        resultFont = [UIFont boldSystemFontOfSize:13];
    }else {
        resultFont = [UIFont boldSystemFontOfSize:10];
    }
    return resultFont;
}

-(UIFont *)myInfoDesFrameFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont boldSystemFontOfSize:11];
    }else if(iPhone6){
        resultFont = [UIFont boldSystemFontOfSize:13];
    }else if(iPhone6plus){
        resultFont = [UIFont boldSystemFontOfSize:14];
    }else {
        resultFont = [UIFont boldSystemFontOfSize:11];
    }
    return resultFont;
}

-(UIFont *)selectedDescripetionTitleFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }else if(iPhone6){
        resultFont = [UIFont boldSystemFontOfSize:15];
    }else if(iPhone6plus){
        resultFont = [UIFont boldSystemFontOfSize:16];
    }else {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }
    return resultFont;
}

-(UIFont *)selectedDescripetionContentFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont boldSystemFontOfSize:15];
    }else if(iPhone6){
        resultFont = [UIFont boldSystemFontOfSize:16];
    }else if(iPhone6plus){
        resultFont = [UIFont boldSystemFontOfSize:17];
    }else {
        resultFont = [UIFont boldSystemFontOfSize:15];
    }
    return resultFont;
}

-(UIFont *)selectedDescripetionLeftNumberFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }else if(iPhone6){
        resultFont = [UIFont boldSystemFontOfSize:15];
    }else if(iPhone6plus){
        resultFont = [UIFont boldSystemFontOfSize:16];
    }else {
        resultFont = [UIFont boldSystemFontOfSize:13];
    }
    return resultFont;
}

-(UIFont *)relationshipStatusFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:15];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:17];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:18];
    }else {
        resultFont = [UIFont systemFontOfSize:15];
    }
    return resultFont;
}

-(UIFont *)tagSelectTitleFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:13];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:15];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:16];
    }else {
        resultFont = [UIFont systemFontOfSize:13];
    }
    return resultFont;
}

-(UIFont *)tagSelectSubTitleFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:13];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:15];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:16];
    }else {
        resultFont = [UIFont systemFontOfSize:13];
    }
    return resultFont;
}

-(UIFont *)tagItemFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:13];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:14];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:15];
    }else {
        resultFont = [UIFont systemFontOfSize:13];
    }
    return resultFont;
}

-(UIFont *)listDescFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:11];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:12];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:13];
    }else {
        resultFont = [UIFont systemFontOfSize:11];
    }
    return resultFont;
}


-(UIFont *)dynamicMonthFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:15];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:16];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:17];
    }else {
        resultFont = [UIFont systemFontOfSize:15];
    }
    return resultFont;
}

-(UIFont *)dynamicDayFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:21];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:22];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:23];
    }else {
        resultFont = [UIFont systemFontOfSize:21];
    }
    return resultFont;
}

-(UIFont *)dynamicContentFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:13];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:15];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:16];
    }else {
        resultFont = [UIFont systemFontOfSize:13];
    }
    return resultFont;
}

-(UIFont *)dynamicTimeFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:11];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:12];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:13];
    }else {
        resultFont = [UIFont systemFontOfSize:11];
    }
    return resultFont;
}

-(UIFont *)dynamicLikeFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:11];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:12];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:13];
    }else {
        resultFont = [UIFont systemFontOfSize:11];
    }
    return resultFont;
}

-(UIFont *)dynamicCommentFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:11];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:12];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:13];
    }else {
        resultFont = [UIFont systemFontOfSize:11];
    }
    return resultFont;
}

-(UIFont *)publishLocationFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:11];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:12];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:13];
    }else {
        resultFont = [UIFont systemFontOfSize:11];
    }
    return resultFont;
}

-(UIFont *)publishPushFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:15];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:16];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:17];
    }else {
        resultFont = [UIFont systemFontOfSize:15];
    }
    return resultFont;
}

-(UIFont *)publishPlaceHolderFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:13];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:15];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:16];
    }else {
        resultFont = [UIFont systemFontOfSize:13];
    }
    return resultFont;
}

-(UIFont *)publishTextViewFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:14];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:16];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:17];
    }else {
        resultFont = [UIFont systemFontOfSize:14];
    }
    return resultFont;
}

-(UIFont *)publishPushToGOLAFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:13];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:15];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:16];
    }else {
        resultFont = [UIFont systemFontOfSize:13];
    }
    return resultFont;
}

-(UIFont *)publishLabelFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:13];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:15];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:16];
    }else {
        resultFont = [UIFont systemFontOfSize:13];
    }
    return resultFont;
}

-(UIFont *)publishPrivateOrPublicFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:13];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:15];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:16];
    }else {
        resultFont = [UIFont systemFontOfSize:13];
    }
    return resultFont;
}

-(UIFont *)picSelectPreScanFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:16];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:17];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:19];
    }else {
        resultFont = [UIFont systemFontOfSize:16];
    }
    return resultFont;
}

-(UIFont *)picSelectNumberFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:16];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:17];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:19];
    }else {
        resultFont = [UIFont systemFontOfSize:16];
    }
    return resultFont;
}

-(UIFont *)picSeletConfirmFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:16];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:17];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:19];
    }else {
        resultFont = [UIFont systemFontOfSize:16];
    }
    return resultFont;
}

-(UIFont *)publishInputTitleFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:16];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:17];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:18];
    }else {
        resultFont = [UIFont systemFontOfSize:16];
    }
    return resultFont;
}

-(UIFont *)publishInputSubTitleFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:16];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:17];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:18];
    }else {
        resultFont = [UIFont systemFontOfSize:16];
    }
    return resultFont;
}

-(UIFont *)aboutGolaFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:12];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:16];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:17];
    }else {
        resultFont = [UIFont systemFontOfSize:12];
    }
    return resultFont;
}

-(UIFont *)chatUserNameFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:17];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:19];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:20];
    }else {
        resultFont = [UIFont systemFontOfSize:17];
    }
    return resultFont;
}

-(UIFont *)chatFollowRelationStatusFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:8];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:10];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:11];
    }else {
        resultFont = [UIFont systemFontOfSize:8];
    }
    return resultFont;
}

-(UIFont *)chatNewMsgFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:10];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:12];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:13];
    }else {
        resultFont = [UIFont systemFontOfSize:10];
    }
    return resultFont;
}

-(UIFont *)chatContentFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:12];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:16];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:17];
    }else {
        resultFont = [UIFont systemFontOfSize:12];
    }
    return resultFont;
}

-(UIFont *)chatInputFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:12];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:16];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:17];
    }else {
        resultFont = [UIFont systemFontOfSize:12];
    }
    return resultFont;
}

-(UIFont*)chatListDetailFont{
    UIFont *resultFont = nil;
    if (iPhone5) {
        resultFont = [UIFont systemFontOfSize:12];
    }else if(iPhone6){
        resultFont = [UIFont systemFontOfSize:14];
    }else if(iPhone6plus){
        resultFont = [UIFont systemFontOfSize:15];
    }else {
        resultFont = [UIFont systemFontOfSize:12];
    }
    return resultFont;
}
@end
