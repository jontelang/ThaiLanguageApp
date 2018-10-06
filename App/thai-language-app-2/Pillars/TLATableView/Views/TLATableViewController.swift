//
//  TLATableViewController.swift
//  thai-language-app-2
//
//  Created by Jonathan on 4/24/18.
//  Copyright © 2018 Jonathan Winger Lang. All rights reserved.
//

import UIKit

class TLATableViewController: UIViewController {

    @IBOutlet weak var tableView: TLATableView!
    
    var tableViewEntries: [TLATableViewCellEntry] = [] {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }

}

extension TLATableViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewEntries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellEntry = tableViewEntries[indexPath.row]
        let className = String(describing: cellEntry.cellClass)
        let nib = UINib(nibName: className, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: className)
        let cell = tableView.dequeueReusableCell(withIdentifier: className, for: indexPath) as! TLATableViewCell
        
        // By casting it as! the TLATableViewCell we get access to the setup method
        cell.configureCell(data: cellEntry.cellData)
        
        // TODO: Shouldn't this be some nice place in each cell?
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        
        return cell
    }
    
}

extension TLATableViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cellEntry = tableViewEntries[indexPath.row]
        if let target = cellEntry.cellSelectedData?.target {
            if let selector = cellEntry.cellSelectedData?.selector {
                if target.responds(to: selector) {
                    // Using '_ =' supresses the warning about unused return values
                    _ = target.perform(selector)
                }
            }
        }
    }
    
}
