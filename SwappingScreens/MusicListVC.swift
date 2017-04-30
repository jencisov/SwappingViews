//
//  MusicListVC.swift
//  SwappingScreens
//
//  Created by Kuma on 4/29/17.
//  Copyright © 2017 Kuma. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var songsPickerView: UIPickerView!
    
    let songs = ["Ningen Video","Super Shooter","Rewrite","Again",
                 "Careless Whisper","Carmina Burana"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.red
        
        songsPickerView.dataSource = self
        songsPickerView.delegate = self
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func loadNextScreenPressed(_ sender: Any) {
        let songTitle = songs[songsPickerView.selectedRow(inComponent: 0)]
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongVC {
            if let song = sender as? String {
                destination.selectedSong = song
            }
        }
    }
    
    func numberOfComponents(in songsPickerView: UIPickerView) -> Int {
        return 1
    }
    
    //region songsPickerView methods
    func pickerView(_ pickerView: UIPickerView,
                    numberOfRowsInComponent component: Int) -> Int {
        return songs.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int,
                    forComponent component: Int) -> String? {
        return songs[row]
    }
    //endregion
    
}
