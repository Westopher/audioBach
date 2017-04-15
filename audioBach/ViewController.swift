//
//  ViewController.swift
//  audioBach
//
//  Created by West Kraemer on 4/14/17.
//  Copyright © 2017 West Kraemer. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
       var player = AVAudioPlayer()

    @IBAction func play(_ sender: Any) {
        
        player.play()
        
    }

    @IBAction func pause(_ sender: Any) {
        
        player.pause()
        
    }
    
    @IBAction func sliderMoved(_ sender: Any) {
        
        player.volume = slider.value
        
    }
    
    @IBOutlet var slider: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let audioPath = Bundle.main.path(forResource: "sheep", ofType: "mp3")
        
        do {
            
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
            
        } catch {
        
            // Process any errors
    
    }

    func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

}
