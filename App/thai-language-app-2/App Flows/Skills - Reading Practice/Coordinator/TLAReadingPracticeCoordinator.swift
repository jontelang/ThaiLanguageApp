//
//  TLAReadingPracticeCoordinator.swift
//  thai-language-app-2
//
//  Created by Jonathan on 9/23/18.
//  Copyright © 2018 Jonathan Winger Lang. All rights reserved.
//

import UIKit

class TLAReadingPracticeCoordinator: TLACoordinator {
    
    override func start() {
        let readingPracticeViewController = TLAReadingPracticeViewController.instantiateFromStoryboard() as! TLAReadingPracticeViewController
        
        // TODO: Is this possible easily?
        // Here we let the coordinator tell the controller how to be presented,
        // the controller itself doesn't need to know.
        //readingPracticeViewController.prefersNavigationBarHidden
        
        // Calling just 'loadView()' prevents 'viewDidLoad()' from being called
        // so we use 'loadViewIfNeeded()' instead. In any case, we do this to
        // ensure that we have initialised our IBOutlets when we later call
        // the method 'configureView()'
        readingPracticeViewController.loadViewIfNeeded()
        
        // Prepare and set a model of the controller
        let readingPracticeModelStore = TLAModelEntryStore<TLAReadingPracticeModelEntry>.init()
        let readingPracticeModelEntries = readingPracticeModelStore.getModelEntries(fileName: "TLAReadingPracticeModelStoreData")
        readingPracticeViewController.configureView(with: readingPracticeModelEntries)
        
        navigationController.show(readingPracticeViewController, sender: nil)
    }
    
}
