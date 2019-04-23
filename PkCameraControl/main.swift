//
//  main.swift
//  PkCameraControl
//
//  Created by Greg on 2019-03-14.
//  Copyright © 2019 Greg Beaton. All rights reserved.
//

import Foundation
import ImageCaptureCore

print("Hello, World!")

let browser = ICDeviceBrowser.init()
let myDeviceBrowserDelegate = myDeviceBrowserDelegateClass.init()
browser.delegate = myDeviceBrowserDelegate
browser.browsedDeviceTypeMask = ICDeviceTypeMask(rawValue: ICDeviceTypeMask.camera.rawValue | ICDeviceLocationTypeMask.local.rawValue | ICDeviceLocationTypeMask.bluetooth.rawValue | ICDeviceLocationTypeMask.bonjour.rawValue | ICDeviceLocationTypeMask.remote.rawValue | ICDeviceLocationTypeMask.shared.rawValue)!

//browser.browsedDeviceTypeMask = ICDeviceTypeMask(rawValue: 0xFFFF)!

browser.start()
while(browser.isBrowsing){
    print("browsing cameras...")
    print(browser.devices!)
    sleep(3)
}
browser.stop()
