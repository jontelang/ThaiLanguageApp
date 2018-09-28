//
//  TLAReadingSpeedViewController.swift
//  thai-language-app-2
//
//  Created by Jonathan on 5/16/18.
//  Copyright © 2018 Jonathan Winger Lang. All rights reserved.
//

import UIKit

protocol TLAReadingSpeedViewControllerDelegate: class {
    
    func didPressNext(fromController: TLAReadingSpeedViewController)
    
}

class TLAReadingSpeedViewController: UIViewController {
    
    public weak var delegate: TLAReadingSpeedViewControllerDelegate?
    
    @IBOutlet weak var labelThai: TLALabel!
    @IBOutlet weak var labelTransliteration: TLALabel!
    @IBOutlet weak var buttonBack: TLAVerticalButton!
    @IBOutlet weak var buttonReveal: TLAVerticalButton!
    @IBOutlet weak var buttonNext: TLAVerticalButton!
    
    var readingSpeedModel: TLAReadingSpeedModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Reading Speed Tester"
        buttonBack.setTitle("Back", for: UIControlState.normal)
        buttonReveal.setTitle("Reveal", for: UIControlState.normal)
        buttonNext.setTitle("Next", for: UIControlState.normal)
        
        labelThai.theme = TLATheme.ReadingSpeed.Label.Thai()
        labelTransliteration.theme = TLATheme.ReadingSpeed.Label.Transliteration()
        buttonBack.theme = TLATheme.ReadingSpeed.Button.Back()
        buttonReveal.theme = TLATheme.ReadingSpeed.Button.Reveal()
        buttonNext.theme = TLATheme.ReadingSpeed.Button.Next()
        
        buttonBack.addTarget(self, action: #selector(pressBack), for: UIControlEvents.touchUpInside)
        buttonReveal.addTarget(self, action: #selector(pressReveal), for: UIControlEvents.touchUpInside)
        buttonNext.addTarget(self, action: #selector(pressNext), for: UIControlEvents.touchUpInside)
    }
    
    @objc func pressBack() {
        readingSpeedModel?.back()
        self.refreshUI()
    }
    
    @objc func pressReveal() {
        let currentModelEntry = readingSpeedModel?.currentModelEntry()
        labelTransliteration.text = currentModelEntry?.transliteration
    }
    
    @objc func pressNext() {
        readingSpeedModel?.next()
        self.refreshUI()
    }

    func refreshUI() {
        let currentModelEntry = readingSpeedModel?.currentModelEntry()
        labelThai.text = currentModelEntry?.thai
        labelTransliteration.text = "..."
    }
    
}

extension TLAReadingSpeedViewController {
    
    public func configureView(with: TLAReadingSpeedModel) {
        readingSpeedModel = with
        self.refreshUI()
    }
    
}
