//
//  ViewController.swift
//  Algorythm
//
//  Created by Lucas Ochoa on 7/27/15.
//  Copyright (c) 2015 Lucas Ochoa. All rights reserved.
//

import UIKit

class PlaylistMasterViewController: UIViewController {

    @IBOutlet weak var playlistImageView0: UIImageView!
    @IBOutlet weak var aButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let playlist = Playlist(index: 0)
        playlistImageView0.image = playlist.icon
        
        aButton.setTitle("Press Me!", forState: .Normal)
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showPlaylistDetail" {
            
            let playlistDetailController = segue.destinationViewController as! PlaylistDetailViewController
            playlistDetailController.segueLabelText = "Yay!"
        }
    }

}

