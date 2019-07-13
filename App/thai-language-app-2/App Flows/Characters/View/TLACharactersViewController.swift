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
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        return scrollView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        let rows = TLACharactersStackviewModelProvider.buildRows()
        let stackview = TLACharactersStackviewBuilder.buildView(displayRows: rows)
        scrollView.addSubview(stackview)
        
        NSLayoutConstraint.activate([
            stackview.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            stackview.widthAnchor.constraint(equalTo: scrollView.widthAnchor, constant: -20),
            stackview.topAnchor.constraint(equalTo: scrollView.topAnchor),
            stackview.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor)
        ])
    }
}
