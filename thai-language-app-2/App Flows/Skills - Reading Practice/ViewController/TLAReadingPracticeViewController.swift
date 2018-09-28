//
//  TLAReadingPracticeViewController.swift
//  thai-language-app-2
//
//  Created by Jonathan on 9/23/18.
//  Copyright © 2018 Jonathan Winger Lang. All rights reserved.
//

import UIKit

class TLAReadingPracticeViewController: UIViewController {

    @IBOutlet weak var labelTitle: TLALabel!
    @IBOutlet weak var textViewText: TLATextView!
    @IBOutlet weak var buttonFontSizeDecrease: TLAButton!
    @IBOutlet weak var buttonFontSizeIncrease: TLAButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelTitle.text = "Reading Practice"
        buttonFontSizeDecrease.setTitle("A-", for: UIControlState.normal)
        buttonFontSizeIncrease.setTitle("A+", for: UIControlState.normal)
        
        textViewText.theme = TLATheme.ReadingPractice.Text()
        
        buttonFontSizeDecrease.addTarget(self, action: #selector(pressFontSizeDecrease), for: UIControlEvents.touchUpInside)
        buttonFontSizeIncrease.addTarget(self, action: #selector(pressFontSizeIncrease), for: UIControlEvents.touchUpInside)
    }
    
    @objc func pressFontSizeDecrease() {
        let size = textViewText.font!.pointSize - 1.0
        textViewText.theme = TLATheme.ReadingPractice.Text(fontSize: size)
    }
    
    @objc func pressFontSizeIncrease() {
        let size = textViewText.font!.pointSize + 1.0
        textViewText.theme = TLATheme.ReadingPractice.Text(fontSize: size)
    }
    
}

extension TLAReadingPracticeViewController {
    
    // TODO: Add a proper Model (unit testable for this specific view) rather
    // than using an Array with entries.
    public func configureView(with: [TLAReadingPracticeModelEntry]) {
        let randomIndex = Int(arc4random_uniform(UInt32(with.count)))
        textViewText.text = with[randomIndex].text
    }
    
}
