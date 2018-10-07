//
//  TLACharactersViewController.swift
//  thai-language-app-2
//
//  Created by Jonathan on 10/7/18.
//  Copyright © 2018 Jonathan Winger Lang. All rights reserved.
//

import UIKit

class TLACharactersViewController: UIViewController {
    
    @IBOutlet weak var collectionViewCharacters: TLACollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Characters"
        
        collectionViewCharacters.theme = TLATheme.Characters.CollectionView()
    }

}
