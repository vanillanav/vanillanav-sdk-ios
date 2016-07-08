# VanillaNAV SDK for iOS


* Sign up for a free account on www.vanillanav.com
* Create an online venue using [vanillaNAV Manager](vanillanav.com/admin)


## Installation
### CocoaPods
[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```


To integrate VanillaNav SDK into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
pod 'VanillaNavSDK', :git => "https://github.com/vanillanav/vanillanav-sdk-ios.git"
```

Then, run the following command:

```bash
$ pod install
```

## Usage

### Whitelist app

If you use the VanillaNav navigation in your app that can perform switch to VanillaNav apps, you will need to update your application's plist to handle the changes to `canOpenURL` described in https://developer.apple.com/videos/wwdc/2015/?id=703 .

```bash
<key>LSApplicationQueriesSchemes</key>
<array>
		<string>vanillanav</string>
</array>
```

### Trigger navigation
```swift
        VanillaNav().navigateToVanillaNav(Int, destinationId: Int)
```

## Requirements

- iOS 8.0+ / Mac OS X 10.9+ / tvOS 9.0+ / watchOS 2.0+
- Xcode 7.3+

## Example 
```swift
import UIKit
import VanillaNavSDK

class ViewController: UIViewController {
    
    @IBAction func openVanillaNavButtPress(sender: AnyObject) {
        VanillaNav().navigateToVanillaNav(8037, destinationId: 19144)
    }
}
```

