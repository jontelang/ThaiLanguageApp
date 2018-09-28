//
//  TLASettingsViewController.swift
//  thai-language-app-2
//
//  Created by Jonathan on 5/3/18.
//  Copyright © 2018 Jonathan Winger Lang. All rights reserved.
//

import UIKit

class TLASettingsViewController: TLATableViewController {
    
    var settingsModels: [TLASettingModel] = [] {
        didSet {
            var entries: [TLATableViewCellEntry] = []
            for settingModel in settingsModels {
                let cellEntry = TLATableViewCellEntry(cellClass: TLASettingsSwitchCell.self, cellData: settingModel)
                entries.append(cellEntry)
            }
            tableViewEntries = entries
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        settingsModels = [
                TLASettingModel(key: "TLASettingsKeyProFeatures", title: "Pro features", value: true),
                TLASettingModel(key: "TLASettingsKeyDarkTheme", title: "Dark theme", value: false),
                TLASettingModel(key: "TLASettingsKeyLargeType", title: "Large type", value: false)
        ]
    }

}

extension TLASettingsViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var settingModel = settingsModels[indexPath.row]
        settingModel.value = !(settingModel.value as! Bool)
        settingsModels[indexPath.row] = settingModel
    }
    
}
