//
//  TLADebugUIViewController.swift
//  thai-language-app-2
//
//  Created by Jonathan on 8/6/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

import UIKit

/// Purpose: You can temporarily use this view controller to tap-to-see the
/// recursive description of a view.
class TLADebugUIViewController: UIViewController {
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let tap = UITapGestureRecognizer(target: self, action: #selector(tapCatch))
        view.addGestureRecognizer(tap)
    }
    
    @objc func tapCatch() {
        print(view.value(forKey: "recursiveDescription")!)
    }
}
