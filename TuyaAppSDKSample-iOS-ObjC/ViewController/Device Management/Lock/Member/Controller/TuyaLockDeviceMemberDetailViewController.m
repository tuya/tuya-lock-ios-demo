//
//  TuyaLockDeviceMemberDetailViewController.m
//  TuyaAppSDKSample-iOS-ObjC
//
//  Copyright (c) 2014-2023 Tuya Inc. (https://developer.tuya.com/)

#import "TuyaLockDeviceMemberDetailViewController.h"
#import "TuyaLockDeviceMemberDetailView.h"
#import "TuyaLockDeviceMemberUpdateTimeViewController.h"

@interface TuyaLockDeviceMemberDetailViewController ()<TuyaLockDeviceMemberDetailViewDelegate>

@property (nonatomic, strong) TuyaLockDeviceMemberDetailView *detailView;

@end

@implementation TuyaLockDeviceMemberDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.detailView = [[TuyaLockDeviceMemberDetailView alloc] initWithFrame:self.view.bounds];
    self.detailView.delegate = self;
    [self.view addSubview:self.detailView];
    [self.detailView reloadData:self.dataSource];
}

#pragma mark - TuyaLockDeviceMemberDetailViewDelegate

- (void)addUnlockMode:(int)type{
    if (type == 0){
        
    }
    else if (type == 1){
        
    }
    else if (type == 2){
        
    }
}

- (void)gotoUpdateVC:(NSDictionary *)data{
    TuyaLockDeviceMemberUpdateTimeViewController *vc = [[TuyaLockDeviceMemberUpdateTimeViewController alloc] init];
    vc.dataSource = data;
    [self.navigationController pushViewController:vc animated:YES];
}

@end
