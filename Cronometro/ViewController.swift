//
//  ViewController.swift
//  Cronometro
//
//  Created by Rafael Ornelas on 18/09/15.
//  Copyright © 2015 Ornelas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var time = 0
    var timer = NSTimer()

    @IBOutlet weak var timeLabel: UILabel!
    
    @IBAction func play(sender: AnyObject) {

        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("increaseTime"), userInfo: nil, repeats: true)
    }

    @IBAction func pause(sender: AnyObject) {
        timer.invalidate()
    }
    
    @IBAction func zerar(sender: AnyObject) {
        timer.invalidate()
        time = 0
        timeLabel.text = "\(0)"
    }
    
    func increaseTime() {
        time++
        timeLabel.text = "\(time)"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

