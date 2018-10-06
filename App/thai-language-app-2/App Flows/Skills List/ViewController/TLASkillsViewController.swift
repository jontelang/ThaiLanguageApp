//
//  TLASkillsViewController.swift
//  thai-language-app-2
//
//  Created by Jonathan on 5/22/18.
//  Copyright © 2018 Jonathan Winger Lang. All rights reserved.
//

import UIKit

protocol TLASkillsViewControllerDelegate: class {
    
    func didPressReadingSpeed(fromController: TLASkillsViewController)
    func didPressReadingPractice(fromController: TLASkillsViewController)
    
}

class TLASkillsViewController: TLATableViewController {

    public weak var delegate: TLASkillsViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableViewEntries = [
            TLATableViewCellEntry(cellClass: TLASkillsCell.self, cellData: TLASkillsCellEntry(title: "Reading Speed", subtitle: "Read full sentences with the proper tone"), cellSelectedData:(self, #selector(pressReadingSpeed))),
            TLATableViewCellEntry(cellClass: TLASkillsCell.self, cellData: TLASkillsCellEntry(title: "Reading Practice", subtitle: "Just read. Useful when you want to practice speed or reading larger bodies of text"), cellSelectedData: (self, #selector(pressReadingPractice))),
            TLATableViewCellEntry(cellClass: TLASkillsCell.self, cellData: TLASkillsCellEntry(title: "Tone Drill", subtitle: "Read the proper tone, single or multi syllable options available")),
            TLATableViewCellEntry(cellClass: TLASkillsCell.self, cellData: TLASkillsCellEntry(title: "Consonants", subtitle: "Basic speed recognition")),
            TLATableViewCellEntry(cellClass: TLASkillsCell.self, cellData: TLASkillsCellEntry(title: "Vowels", subtitle: "Basic speed recognition")),
        ]
    }
    
    @objc func pressReadingSpeed() {
        delegate?.didPressReadingSpeed(fromController: self)
    }
    
    @objc func pressReadingPractice() {
        delegate?.didPressReadingPractice(fromController: self)
    }

}
