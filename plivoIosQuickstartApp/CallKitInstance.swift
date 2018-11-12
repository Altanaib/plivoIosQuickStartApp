//
//  CallKitInstance.swift
//  plivoIosQuickstartApp
//
//  Created by Altanai Bisht on 12/11/18.
//  Copyright © 2018 Altanai Bisht. All rights reserved.
//

import Foundation
import UIKit
import CallKit

class CallKitInstance: NSObject {
    
    var callUUID: UUID?
    var callKitProvider: CXProvider?
    var callKitCallController: CXCallController?
    var callObserver: CXCallObserver?
    
    //Singleton instance
    static let sharedInstance = CallKitInstance()
    
    override init() {
        
        super.init()
        
        let configuration = CXProviderConfiguration(localizedName: "Plivo")
        configuration.maximumCallGroups = 1
        configuration.maximumCallsPerCallGroup = 1
        callKitProvider = CXProvider(configuration: configuration)
        callKitCallController = CXCallController()
        callObserver = CXCallObserver()
        
    }
    
}
