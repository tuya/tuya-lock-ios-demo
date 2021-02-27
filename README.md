#### Note: This repository is inherited from the [old Tuya Github repository](https://github.com/TuyaInc/tuyasmart_lock_ios_sdk), which will be deprecated soon. Use this repository for Tuya SDK development instead. You can change the existing remote repository URL. For more information, see [Tutorial](https://docs.github.com/en/free-pro-team@latest/github/using-git/changing-a-remotes-url).

# Tuya Smart Lock iOS SDK

[English](README.md) | [中文版](README_cn.md)

Tuya Smart Lock iOS SDK provides function packaging with smart door lock devices to accelerate the development process of door lock application functions. The following functions are supported:

* Door lock user system: Lock user management, associated passwords, fingerprints, and cards are supported.
* Door lock password unlocking: Dynamic passwords and temporary passwords can be managed.
* Door lock usage records: Unlocking records, doorbell records, and alarm records are supported.

## Preparation

Tuya Smart Lock iOS SDK is based on the [Tuya Smart Home SDK](https://developer.tuya.com/en/docs/app-development/ios-app-sdk/feature-overview?id=Ka5cgmlybhjk8).

Before the Tuya Smart Lock iOS SDK is integrated, perform the following steps:

* Integrate the Tuya Home SDK: Apply for the Tuya App ID, App Secret, and security image, and configure the required environment. For more information, see [Preparation](https://developer.tuya.com/en/docs/app-development/preparation/preparation?id=Ka69nt983bhh5).
* Activate the lock device.

## Integrate the SDK

###  Use CocoaPods for efficient integration

Add the following content to the `Podfile` file:

```ruby
platform :ios, '8.0'

target 'your_target_name' do
   pod "TuyaSmartLockKit"
end
```

Run the `pod update` command in the root directory of the project. We recommend that you update CocoaPods to the latest version. For more information, see [CocoaPods Guides](https://guides.cocoapods.org/).

### Import the header file

For an Objective-C project, create your class in the header file.

```objective-c
#import <TuyaSmartLockKit/TuyaSmartLockKit.h>
```

For a Swift project, create the header file `bridge-header.h`.

```
import TuyaSmartLockKit
```


### References
* [BLE Smart Lock SDK](https://developer.tuya.com/en/docs/app-development/ios-app-sdk/extension-sdk/smart-lock-sdk/blelock?id=Ka5ztruz29ekt)
* [Wi-Fi Smart Lock SDK](https://developer.tuya.com/en/docs/app-development/ios-app-sdk/extension-sdk/smart-lock-sdk/wifilock?id=Ka5ztrwwcxzwj)

## Support

You can get support from Tuya Smart by using the following methods:

Tuya Smart Help Center: https://support.tuya.com/en/help

Technical Support Console: https://service.console.tuya.com/

## License

This Tuya Home iOS SDK Sample is licensed under the MIT License.
