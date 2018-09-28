//
//  TLAMenuViewController.swift
//  thai-language-app-2
//
//  Created by Jonathan on 4/22/18.
//  Copyright © 2018 Jonathan Winger Lang. All rights reserved.
//

import UIKit

protocol TLAMenuViewControllerDelegate: class {
    
    func didPressLessons(fromController: TLAMenuViewController)
    func didPressSkills(fromController: TLAMenuViewController)
    func didPressContact(fromController: TLAMenuViewController)
    func didPressSettings(fromController: TLAMenuViewController)
    
}

class TLAMenuViewController: TLATableViewController {
    
    public weak var delegate: TLAMenuViewControllerDelegate?
    
    // TODO: Make this settable from outside the VC, so that the coordinator
    // can handle the presentation. Or possibly add this as a .. something
    //override var prefersStatusBarHidden: Bool {
    //    return true
    //}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewEntries = [
            TLATableViewCellEntry(cellClass: TLAMenuWelcomeCell.self, cellData: nil),
            TLATableViewCellEntry(cellClass: TLAMenuUsageCell.self, cellData: nil),
            TLATableViewCellEntry(cellClass: TLAMenuLabelEntryCell.self, cellData: "Lessons", cellSelectedData:(self, #selector(pressLessons))),
            TLATableViewCellEntry(cellClass: TLAMenuLabelEntryCell.self, cellData: "Skills", cellSelectedData:(self, #selector(pressSkills))),
            TLATableViewCellEntry(cellClass: TLAMenuLabelEntryCell.self, cellData: "Contact", cellSelectedData:(self, #selector(pressContact))),
            TLATableViewCellEntry(cellClass: TLAMenuLabelEntryCell.self, cellData: "App Settings", cellSelectedData:(self, #selector(pressSettings))),
            TLATableViewCellEntry(cellClass: TLAMenuAppVersionCell.self, cellData: "v0.5"),
        ]
    }
    
    @objc func pressLessons() {
        delegate?.didPressLessons(fromController: self)
    }
    
    @objc func pressSkills() {
        delegate?.didPressSkills(fromController: self)
    }
    
    @objc func pressContact() {
        delegate?.didPressContact(fromController: self)
    }
    
    @objc func pressSettings() {
        delegate?.didPressSettings(fromController: self)
    }
    
}

extension TLAMenuViewController: NavigationHidable {

    var prefersNavigationBarHidden: Bool {
        return true
    }

}
