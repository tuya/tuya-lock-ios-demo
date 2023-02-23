//
//  TuyaLockDeviceMemberUpdateTimeViewController.m
//  TuyaAppSDKSample-iOS-ObjC
//
//  Copyright (c) 2014-2023 Tuya Inc. (https://developer.tuya.com/)

#import "TuyaLockDeviceMemberUpdateTimeViewController.h"
#import "TuyaLockDeviceMemberUpdateTimeView.h"

@interface TuyaLockDeviceMemberUpdateTimeViewController ()<TuyaLockDeviceMemberUpdateTimeViewDelegate>

@property (nonatomic, strong) TuyaLockDeviceMemberUpdateTimeView *timeView;

@end

@implementation TuyaLockDeviceMemberUpdateTimeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"编辑时效";
    self.timeView = [[TuyaLockDeviceMemberUpdateTimeView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:self.timeView];
    
    [self.timeView reloadData:self.dataSource];
}

#pragma mark - TuyaLockDeviceMemberUpdateTimeViewDelegate

- (void)saveMemberTimeInfo{
    
}

@end
