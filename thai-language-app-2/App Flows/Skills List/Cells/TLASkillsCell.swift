//
//  TLASkillsCell.swift
//  thai-language-app-2
//
//  Created by Jonathan on 5/22/18.
//  Copyright © 2018 Jonathan Winger Lang. All rights reserved.
//

import UIKit

class TLASkillsCell: TLATableViewCell {

    @IBOutlet weak var labelTitle: TLALabel!
    @IBOutlet weak var labelSubtitle: TLALabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        labelTitle.theme = TLATheme.Skills.Label.Title()
        labelSubtitle.theme = TLATheme.Skills.Label.Subtitle()
    }
    
    //todo:
    //    - Make "reading speed" just present text. Nothing else. Also remove the "speed" in the name, as it will only be reading text and nothing else.
    //    - Move current reading speed (with tones) move into tone drill
    
    override func configureCell(data: Any?) {
        let skillsCellEntry = data as? TLASkillsCellEntry
        labelTitle.text = skillsCellEntry?.title
        labelSubtitle.text = skillsCellEntry?.subtitle
    }
    
}
