#### Note: This repository is inherited from the [old Tuya Github repository](https://github.com/TuyaInc/tuyasmart_lock_ios_sdk), which will be deprecated soon. Please use this repository for Tuya SDK development instead. For changing the existing remote repository URL, please check this [tutorial](https://docs.github.com/en/free-pro-team@latest/github/using-git/changing-a-remotes-url)

# Tuya Smart Lock iOS SDK

[中文版](README_cn.md) | [English](README.md)

Tuya smart lock Android The SDK provides function packaging with smart door lock devices to speed up and simplify the development process of door lock application functions, including the following functions:

* Door lock user system (including lock user management, associated password, fingerprint, card, etc.)
* Door lock password unlocking (including dynamic password, temporary password management, etc.)
* Door lock usage records (including door lock unlock records, doorbell records, alarm records, etc.)

## Preparation Work

Tuya lock SDK is based on [Tuya Smart Home SDK](https://tuyainc.github.io/tuyasmart_home_ios_sdk_doc/en/)

Before integrating Tuya Lock SDK, you need to do the following:

* Integrate TuyaHomeSdk (including application for tuya App ID and App Secret, security image configuration related environment)，please read [Tuya Smart Home SDK Document]((https://tuyainc.github.io/tuyasmart_home_ios_sdk_doc/zh-hans/resource/Preparation.html))
* Activation of the lock device

## Integrated SDK

###  Use CocoaPods for Quick Integration

Add the following content in the `Podfile` file.

```ruby
platform :ios, '8.0'

target 'your_target_name' do
   pod "TuyaSmartLockKit"
end
```

Then run the `pod update` command in the root directory of project. For use of CocoaPods, please refer to the [CocoaPods Guides](https://guides.cocoapods.org/). It is recommended to update the CocoaPods to the latest version.https://guides.cocoapods.org/)

### Import Header

Objective-C project add in your class

```objective-c
#import <TuyaSmartLockKit/TuyaSmartLockKit.h>
```

Swift project add in `bridge-header.h`

```
import TuyaSmartLockKit
```


### Smart Lock Docs
* [BLE Smart Lock SDK](https://tuyainc.github.io/tuyasmart_home_ios_sdk_doc/en/resource/BLELock.html)
* [Wi-Fi Smart Lock SDK](https://tuyainc.github.io/tuyasmart_home_ios_sdk_doc/en/resource/WiFiLock.html)

## Support

You can get support from Tuya with the following methods:

Tuya Smart Help Center: https://support.tuya.com/en/help

Technical Support Council: https://iot.tuya.com/council/ 

## License

This Tuya Home iOS SDK Sample is licensed under the MIT License.
