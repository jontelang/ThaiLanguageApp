//
//  TLAStackViewDisplayable.swift
//  thai-language-app-2
//
//  Created by Jonathan on 7/14/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

import UIKit

/// Conform to this protocol if you want to display something in a TLAStackView.
/// You should create a new 'TLANewClassDisplay' class that wraps the model you
/// want to display. This basically forces the new class to return a view in some
/// way you want. For example:
///
/// class Text { } // I know nothing about view layer!
///
/// You create a new class that conforms to 'TLAStackViewDisplayable' which connects
/// it to the view layer somewhat, and you inject your model into it.
///
/// class TextDisplay: TLAStackViewDisplayable {
///    var text: Text
///    ...
///
/// The function 'func view -> UIView()' in the protocol determines how your model
/// actually displays. This also means that you can very easily have multiple
/// way way different classes that displays the model in very different ways. You
/// can also easily make a display class that displays multiple models at the same
/// time. The possibilities are endless!
protocol TLAStackViewDisplayable {
    func view() -> UIView
}


// TEMP LOCATION
@objc protocol TLAStackViewTappable {
    func tapped()
}

extension TLAStackViewTappable {
    func tapped() {
        print("a")
    }
}
