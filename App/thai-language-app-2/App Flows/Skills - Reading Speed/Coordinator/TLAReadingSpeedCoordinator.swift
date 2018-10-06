//
//  TLAReadingSpeedCoordinator.swift
//  thai-language-app-2
//
//  Created by Jonathan on 5/22/18.
//  Copyright © 2018 Jonathan Winger Lang. All rights reserved.
//

import UIKit

class TLAReadingSpeedCoordinator: TLACoordinator {

    override func start() {
        let readingSpeedViewController = TLAReadingSpeedViewController.instantiateFromStoryboard() as! TLAReadingSpeedViewController
        readingSpeedViewController.delegate = self
        
        // Calling just 'loadView()' prevents 'viewDidLoad()' from being called
        // so we use 'loadViewIfNeeded()' instead. In any case, we do this to
        // ensure that we have initialised our IBOutlets when we later call
        // the method 'configureView()'
        readingSpeedViewController.loadViewIfNeeded()
        
        // Prepare and set a model of the controller
        let readingSpeedModelStore = TLAModelEntryStore<TLAReadingSpeedModelEntry>.init()
        let readingSpeedModelEntries = readingSpeedModelStore.getModelEntries(fileName: "TLAReadingSpeedModelStoreData")
        let readingSpeedModel = TLAReadingSpeedModel(modelEntries: readingSpeedModelEntries)
        readingSpeedViewController.configureView(with: readingSpeedModel)
        
        navigationController.show(readingSpeedViewController, sender: nil)
    }
    
}

extension TLAReadingSpeedCoordinator: TLAReadingSpeedViewControllerDelegate {
    
    func didPressNext(fromController: TLAReadingSpeedViewController) {
        print("didPressNext fromController: \(fromController)")
    }
    
}
