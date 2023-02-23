//
//  TuyaLinkBindViewController.m
//  TuyaAppSDKSample-iOS-ObjC
//
//  Copyright (c) 2014-2022 Tuya Inc. (https://developer.tuya.com/)

#import "TuyaLinkBindViewController.h"
#import "QRCodeScanerViewController.h"
#import <TuyaSmartActivatorKit/TuyaSmartActivatorKit.h>>

@interface TuyaLinkBindViewController ()

@end

@implementation TuyaLinkBindViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)_bindTuyaLinkWithQRCodeStr:(NSString *)codeStr {
    long long homeId = [Home getCurrentHome].homeId;
    [SVProgressHUD show];
    [[TuyaSmartTuyaLinkActivator new] bindTuyaLinkDeviceWithQRCode:codeStr homeId:homeId success:^(TuyaSmartDeviceModel * _Nonnull deviceModel) {
        [SVProgressHUD showSuccessWithStatus:[NSString stringWithFormat:@"Bind Success.\n devId: %@ \n name: %@", deviceModel.devId, deviceModel.name]];
    } failure:^(NSError *error) {
        [SVProgressHUD showErrorWithStatus:[NSString stringWithFormat:@"Bind failure.(%@)", error.localizedDescription]];
    }];
}

#pragma mark - Table view data source

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        QRCodeScanerViewController *vc = [QRCodeScanerViewController new];
        [vc setScanCallback:^(NSString *result) {
            [self _bindTuyaLinkWithQRCodeStr:result];
        }];
        [self.navigationController pushViewController:vc animated:nil];
    }
}


@end
