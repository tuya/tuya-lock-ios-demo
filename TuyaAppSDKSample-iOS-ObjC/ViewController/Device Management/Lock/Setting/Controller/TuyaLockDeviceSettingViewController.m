//
//  TuyaLockDeviceSettingViewController.m
//  TuyaAppSDKSample-iOS-ObjC
//
//  Copyright (c) 2014-2022 Tuya Inc. (https://developer.tuya.com/)

#import "TuyaLockDeviceSettingViewController.h"
#import "TuyaLockDeviceRemoteSettingView.h"
#import "TuyaLockDeviceSetRemoteVoicePasswordView.h"
#import "TuyaSmartBLELockDevice.h"

#define kResultLabelMargin 20
#define kResultLabelHeight 250

@interface TuyaLockDeviceSettingViewController ()<
UITableViewDelegate,
UITableViewDataSource,
TuyaLockDeviceSetRemoteVoicePasswordViewDelegate,
TuyaLockDeviceRemoteSettingViewDelegate>

@property (strong, nonatomic) UITableView *tableView;
@property (strong, nonatomic) NSArray *datalist;
@property (strong, nonatomic) UILabel *resultLabel;//操作成功、操作失败、失败原因提示

@property (nonatomic, strong) TuyaLockDeviceRemoteSettingView *settingView;
@property (nonatomic, strong) TuyaLockDeviceSetRemoteVoicePasswordView *setVoicePwdView;
@property (strong, nonatomic) TuyaSmartBLELockDevice *bleDevice;

@end

@implementation TuyaLockDeviceSettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ///Init view.
    self.title = @"Lock";
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    [self.view addSubview:self.tableView];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"swepper-action-cell"];
    
    self.resultLabel = [[UILabel alloc] initWithFrame:CGRectMake(kResultLabelMargin, [UIScreen mainScreen].bounds.size.height - kResultLabelHeight, [UIScreen mainScreen].bounds.size.width - 2*kResultLabelMargin, kResultLabelHeight)];
    self.resultLabel.backgroundColor = [UIColor clearColor];
    self.resultLabel.textColor = [UIColor blueColor];
    self.resultLabel.font = [UIFont systemFontOfSize:20];
    self.resultLabel.textAlignment = NSTextAlignmentCenter;
    self.resultLabel.lineBreakMode = NSLineBreakByWordWrapping;
    self.resultLabel.numberOfLines = 0;
    [self.view addSubview:self.resultLabel];
    
    self.datalist = @[
        @"查询远程开锁设置",
        @"远程开门开关设置",
        @"查询音箱密码是否开启",
        @"设置或取消音箱密码",
    ];
}

- (void)fetchData{
//    [self.bleDevice fetchRemoteUnlockTypeWithDevId:@""
//                                           success:^(BOOL result) {
//
//    } failure:^(NSError *error) {
//
//    }];
//
//    [self.bleDevice fetchRemoteVoiceUnlockWithDevId:@""
//                                            success:^(id result) {
//
//    } failure:^(NSError *error) {
//
//    }];
}

#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.datalist.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return  60;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"swepper-action-cell" forIndexPath:indexPath];
    cell.textLabel.text = self.datalist[indexPath.row];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0: {
            
        }
            break;
        case 1:
        {
            
        }
            break;
        case 2:
        {
            
        }
            break;
        case 3:
        {
            
        }
            break;
            
        case 4:
        {
            
        }
            break;
            
        default:
            break;
    }
}

#pragma mark - TuyaLockDeviceSetRemoteVoicePasswordViewDelegate

- (void)confirmAction:(NSString *)pwd{
//    [self.bleDevice setRemoteVoiceUnlockWithDevId:@""
//                                             open:YES
//                                              pwd:pwd
//                                          success:^(id result) {
//            
//    } failure:^(NSError *error) {
//            
//    }];
}

#pragma mark - TuyaLockDeviceRemoteSettingViewDelegate

//- (void)remoteSwitchAction:(BOOL)value{
//    [self.bleDevice setRemoteUnlockTypeWithDevId:@""
//                                         propKvs:@""
//                                         success:^(id result) {
//
//    } failure:^(NSError *error) {
//
//    }];
//}
//
//- (void)voiceSwitchAction:(BOOL)value{
//    [self.bleDevice setRemoteVoiceUnlockWithDevId:@""
//                                             open:NO
//                                              pwd:@""
//                                          success:^(id result) {
//
//    } failure:^(NSError *error) {
//
//    }];
//}

#pragma mark - property

- (TuyaLockDeviceRemoteSettingView *)settingView{
    if (!_settingView){
        _settingView = [[TuyaLockDeviceRemoteSettingView alloc] init];
    }
    return _settingView;
}

- (TuyaLockDeviceSetRemoteVoicePasswordView *)setVoicePwdView{
    if (!_setVoicePwdView){
        _setVoicePwdView = [[TuyaLockDeviceSetRemoteVoicePasswordView alloc] init];
        _setVoicePwdView.hidden = YES;
    }
    
    return _setVoicePwdView;
}

@end
