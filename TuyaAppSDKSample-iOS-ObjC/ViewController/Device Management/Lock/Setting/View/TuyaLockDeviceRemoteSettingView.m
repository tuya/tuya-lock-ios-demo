//
//  TuyaLockDeviceRemoteSettingView.m
//  TuyaAppSDKSample-iOS-ObjC
//
//  Copyright (c) 2014-2023 Tuya Inc. (https://developer.tuya.com/)

#import "TuyaLockDeviceRemoteSettingView.h"
#import <Masonry/Masonry.h>

@interface TuyaLockDeviceRemoteSettingView()

@property (nonatomic, strong) UILabel *remoteLabel;
@property (nonatomic, strong) UISwitch *remoteSwitch;
@property (nonatomic, strong) UILabel *voiceLabel;
@property (nonatomic, strong) UISwitch *voiceSwitch;

@end


@implementation TuyaLockDeviceRemoteSettingView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self){
        [self setupViews];
    }
    
    return self;
}

- (void)setupViews{
    self.remoteLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    self.remoteLabel.textColor = [UIColor blueColor];
    self.remoteLabel.font = [UIFont systemFontOfSize:16];
    self.remoteLabel.textAlignment = NSTextAlignmentLeft;
    self.remoteLabel.text = @"请输入 4~6 位数字密码";
    
    self.voiceLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    self.voiceLabel.textColor = [UIColor blueColor];
    self.voiceLabel.font = [UIFont systemFontOfSize:16];
    self.voiceLabel.textAlignment = NSTextAlignmentLeft;
    self.voiceLabel.text = @"请输入 4~6 位数字密码";
    
    self.remoteSwitch = [[UISwitch alloc] init];
    [self.remoteSwitch addTarget:self action:@selector(remoteSwitchAction:) forControlEvents:UIControlEventTouchUpInside];
    self.voiceSwitch = [[UISwitch alloc] init];
    [self.voiceSwitch addTarget:self action:@selector(voiceSwitchAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [self addSubview:self.remoteLabel];
    [self addSubview:self.voiceLabel];
    [self addSubview:self.remoteSwitch];
    [self addSubview:self.voiceSwitch];
    
    [self.remoteLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            
    }];
    
    [self.voiceLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            
    }];
    
    [self.remoteSwitch mas_makeConstraints:^(MASConstraintMaker *make) {
            
    }];
    
    [self.voiceSwitch mas_makeConstraints:^(MASConstraintMaker *make) {
            
    }];
}

#pragma mark - action

- (void)remoteSwitchAction:(UISwitch *)sw{
    if (self.delegate && [self.delegate respondsToSelector:@selector(remoteSwitchAction:)]){
        [self.delegate remoteSwitchAction:sw.isOn];
    }
}

- (void)voiceSwitchAction:(UISwitch *)sw{
    if (self.delegate && [self.delegate respondsToSelector:@selector(voiceSwitchAction:)]){
        [self.delegate voiceSwitchAction:sw.isOn];
    }
}

@end
