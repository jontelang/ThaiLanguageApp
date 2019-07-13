//
//  TLACharactersViewController.swift
//  thai-language-app-2
//
//  Created by Jonathan on 10/7/18.
//  Copyright © 2018 Jonathan Winger Lang. All rights reserved.
//

import UIKit

class TLACharactersViewController: UIViewController {
    
    lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        view.addSubview(scrollView)
        scrollView.pinTo(view)
        return scrollView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        let rows = TLACharactersStackviewModelProvider.buildRows()
        let stackview = TLACharactersStackviewBuilder.buildView(displayRows: rows)
        scrollView.addSubview(stackview)
        stackview.centerXIn(scrollView, padding: 10.0)
    }
}
