//
//  TLASettingsSwitchCell.swift
//  thai-language-app-2
//
//  Created by Jonathan on 5/6/18.
//  Copyright © 2018 Jonathan Winger Lang. All rights reserved.
//

import UIKit

class TLASettingsSwitchCell: TLATableViewCell {

    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var switchSwitch: UISwitch!
    
    override func configureCell(data: Any?) {
        let settingModel = data as? TLASettingModel
        
        labelTitle.text = settingModel?.title
        
        // The cells value is determined by the TLASettingModel, which lives in
        // the TLASettingsViewController - we will rely on the table views
        // `didSelectRowAt` to toggle it. This means we will ignore the default
        // touches on the UISwitch.
        switchSwitch.isUserInteractionEnabled = false
        
        if let value = settingModel?.value {
            switchSwitch.setOn(value as! Bool, animated: true)
        }
    }
    
}
