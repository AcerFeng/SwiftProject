//
//  MasterViewController.swift
//  StopWatch
//
//  Created by lanfeng on 16/11/14.
//  Copyright © 2016年 lanfeng. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController {

    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var pauseBtn: UIButton!
    
    var counter = 0.0
    var timer = Foundation.Timer()
    var isPlaying = false
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
    

    @IBOutlet weak var timeLabel: UILabel!
    @IBAction func resetButtonDidTouch(_ sender: AnyObject) {
        timer.invalidate()
        isPlaying = false
        counter = 0
        timeLabel.text = String(counter)
        playBtn.isEnabled = true
        pauseBtn.isEnabled = true
    }
    
    @IBAction func playButtonDidTouch(_ sender: AnyObject) {
        if isPlaying {
            return
        }
        
        pauseBtn.isEnabled = false
        pauseBtn.isEnabled = true
        timer = Foundation.Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(MasterViewController.UpdateTimer), userInfo: nil, repeats: true)
        isPlaying = true
    }
    
    @IBAction func pauseButtonDidTouch(_ sender: AnyObject) {
        playBtn.isEnabled = true
        pauseBtn.isEnabled = false
        timer.invalidate()
        isPlaying = false
    }
    
    func UpdateTimer() {
        counter += 0.1
        timeLabel.text = String(format: "%.1f", counter)
    }

}

