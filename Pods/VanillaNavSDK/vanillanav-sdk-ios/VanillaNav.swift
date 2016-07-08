//
//  VanillaNavSDK.swift
//  vanillanav-sdk-ios
//
//  Created by Danilov Dorin on 05/07/16.
//  Copyright © 2016 Danilov Dorin. All rights reserved.
//

import UIKit

public class VanillaNav {
    
    private let scheme = "vanillanav:"
    private let appStore = NSURL(string: "itms-apps://itunes.apple.com/ro/app/vanillanav/id1007116984")!
    
    public init () {
        
    }
    
    public func navigateToVanillaNav(venueId: Int, destinationId: Int ) {
        
        let url = self.constructURL(venueId, destinationId: destinationId )
        let sharedApp = UIApplication.sharedApplication()
        sharedApp.openURL(url)
    }
    
    private func constructURL(venueId: Int, destinationId: Int) -> NSURL {
        
        if isAppInstalled() {
            return self.constructLinkToInstaledApp(venueId, destinationId: destinationId)
        } else {
            return appStore
        }
    }
    
    private func constructLinkToInstaledApp(venueId: Int, destinationId: Int) -> NSURL {
        
        var str = self.scheme
        
        str += "navigateTo"
        str += "?venueId=\(venueId)"
        str += "&referenceId=\(destinationId)"
        
        return NSURL(string: str)!
    }
    
    private func isAppInstalled() -> Bool {
        let sharedApp = UIApplication.sharedApplication()
        let url = NSURL(string: "\(self.scheme)")
        
        return sharedApp.canOpenURL(url!)
    }
}


