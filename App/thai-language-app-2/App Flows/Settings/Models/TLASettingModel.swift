//
//  TLASettingsOptionModel.swift
//  thai-language-app-2
//
//  Created by Jonathan on 5/6/18.
//  Copyright © 2018 Jonathan Winger Lang. All rights reserved.
//

import UIKit

struct TLASettingModel {

    /// A unique identifier for the setting
    var key: String
    
    /// The title is a user facing string, describing the setting
    var title: String
    
    /// The value of the setting
    var value: Any?
    
}
