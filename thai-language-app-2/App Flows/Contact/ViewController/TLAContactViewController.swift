//
//  TLAContactViewController.swift
//  thai-language-app-2
//
//  Created by Jonathan on 5/3/18.
//  Copyright © 2018 Jonathan Winger Lang. All rights reserved.
//

import UIKit

class TLAContactViewController: UIViewController {

    @IBOutlet weak var labelTitle: TLALabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelTitle.theme = TLATheme.Contact.Label.Title()
        labelTitle.text = "Contact the app makers"
    }

}
