//
//  TLAMenuAppVersionCell.swift
//  thai-language-app-2
//
//  Created by Jonathan on 4/24/18.
//  Copyright © 2018 Jonathan Winger Lang. All rights reserved.
//

import UIKit

class TLAMenuAppVersionCell: TLATableViewCell {

    @IBOutlet weak var labelVersion: TLALabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        labelVersion.theme = TLATheme.Menu.Label.AppVersion()
    }
    
    override func configureCell(data: Any?) {
        let version = data as? String
        labelVersion.text = version
    }
    
}
