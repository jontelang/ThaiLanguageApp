//
//  TLAFillerDisplay.swift
//  thai-language-app-2
//
//  Created by Jonathan on 7/14/19.
//  Copyright © 2019 Jonathan Winger Lang. All rights reserved.
//

import UIKit

/// Purpose: Acts as an empty view that you can add into a TLADisplayRow to act
/// as a spacer. E.g. if you want a layout like this:
///
///   [a][b][c]
///   [d][e][ ] <-- Filler to preserve the grid
///
/// Without a filler at the end, the default behaviour of the stackview would be
///
///   [a][b][c]
///   [d][eeee]
///
/// Which is probably not what you want.
struct TLAFillerDisplay: TLAStackViewDisplayable {
    func view() -> UIView {
        let view = UIView()
        view.backgroundColor = .clear
        return view
    }
}
