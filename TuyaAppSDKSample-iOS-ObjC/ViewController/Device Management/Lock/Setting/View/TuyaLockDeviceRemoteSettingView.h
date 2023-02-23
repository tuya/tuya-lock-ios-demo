//
//  TuyaLockDeviceRemoteSettingView.h
//  TuyaAppSDKSample-iOS-ObjC
//
//  Copyright (c) 2014-2023 Tuya Inc. (https://developer.tuya.com/)

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol TuyaLockDeviceRemoteSettingViewDelegate <NSObject>

- (void)remoteSwitchAction:(BOOL)value;

- (void)voiceSwitchAction:(BOOL)value;

@end

@interface TuyaLockDeviceRemoteSettingView : UIView

@property (nonatomic, weak) id<TuyaLockDeviceRemoteSettingViewDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
