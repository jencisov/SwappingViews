//
//  PlaySongVC.swift
//  SwappingScreens
//
//  Created by Kuma on 4/29/17.
//  Copyright © 2017 Kuma. All rights reserved.
//

import UIKit

class PlaySongVC: UIViewController {

    @IBOutlet weak var songTitleLabel: UILabel!
    
    private var _selectedSong: String!
    
    var selectedSong: String {
        get{
            return _selectedSong
        }set{
            _selectedSong = newValue
        }
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        songTitleLabel.text = _selectedSong
    }

}
