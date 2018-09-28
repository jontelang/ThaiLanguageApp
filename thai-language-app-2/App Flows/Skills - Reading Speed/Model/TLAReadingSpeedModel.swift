//
//  TLAReadingSpeedModel.swift
//  thai-language-app-2
//
//  Created by Jonathan on 5/20/18.
//  Copyright © 2018 Jonathan Winger Lang. All rights reserved.
//

import Foundation

class TLAReadingSpeedModel {
    
    var readingSpeedModelEntries: [TLAReadingSpeedModelEntry]
    var previousIndexes: [Int]
    var currentIndex = 0
    
    init(modelEntries: [TLAReadingSpeedModelEntry]) {
        readingSpeedModelEntries = modelEntries
        previousIndexes = []
    }
    
    func currentModelEntry() -> TLAReadingSpeedModelEntry {
        return readingSpeedModelEntries[currentIndex]
    }
    
    func back() {
        if let previousIndex = previousIndexes.popLast() {
            currentIndex = previousIndex
        }
        else {
            currentIndex = 0
        }
    }
    
    func next() {
        previousIndexes.append(currentIndex)
        currentIndex = Int(arc4random()) % readingSpeedModelEntries.count
    }
    
}
