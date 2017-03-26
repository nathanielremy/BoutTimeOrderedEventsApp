//
//  ViewController.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Treehouse on 12/8/16.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

class ViewController: UIViewController {
    
//    Label Outlets
    @IBOutlet weak var topEventLabel: UILabel!
    @IBOutlet weak var eventLabel2: UILabel!
    @IBOutlet weak var eventLabel3: UILabel!
    @IBOutlet weak var eventlabel4: UILabel!
    @IBOutlet weak var timer: UILabel!
    @IBOutlet weak var nextRoundButton: UIButton!
    
    

////    Button Outlets
    @IBOutlet weak var topDown: UIButton!
    @IBOutlet weak var middleTopUp: UIButton!
    @IBOutlet weak var middleTopDown: UIButton!
    @IBOutlet weak var middleBottomUp: UIButton!
    @IBOutlet weak var middleBottomDown: UIButton!
    @IBOutlet weak var bottomUp: UIButton!
    
    let totalRounds = 6
    var currentRound: Int = 1
    var correctAnswers = 0
    var correctSound = AVAudioPlayer()
    var incorrectSound = AVAudioPlayer()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        nextRoundButton.isHidden = true
        
        
//        attempt at populating labels with events
        
        prepareSound()
        displayEvent()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func checkEventOrder() {
        
        
        
        if topEventLabel.tag > eventLabel2.tag && eventLabel2.tag > eventLabel3.tag && eventLabel3.tag > eventlabel4.tag {
            correctAnswers += 1
            
            nextRoundButton.setImage(#imageLiteral(resourceName: "next_round_success"), for: UIControlState.normal)
            correctSound.play()
        
            } else {
            if let nextRoundFail = UIImage(named: "next_round_fail") {
                nextRoundButton.setImage(nextRoundFail, for: UIControlState.normal)
                incorrectSound.play()
            }
        }
        
        nextRoundButton.isHidden = false
    }
    
    
    @IBAction func nextRoundAction(_ sender: UIButton) {
        displayEvent()
    }
    
    

    func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent) {
        if motion == .motionShake {
            checkEventOrder()
        }
    }
    
    
    
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
//    labels to switch events and years
@IBAction func switchEvent(_ sender: UIButton) {
    
    
    switch sender {
            
        case topDown, middleTopUp:
            swap(&topEventLabel.text, &eventLabel2.text)
            swap(&topEventLabel.tag, &eventLabel2.tag)
            
        case middleTopDown, middleBottomUp:
            swap(&eventLabel2.text, &eventLabel3.text)
            swap(&eventLabel2.tag, &eventLabel3.tag)
            
        case middleBottomDown, bottomUp:
            swap(&eventLabel3.text, &eventlabel4.text)
            swap(&eventLabel3.tag, &eventlabel4.tag)
            
        default: break
        }
    
    
    print("\(topEventLabel.tag)\n \(eventLabel2.tag)\n \(eventLabel3.tag)\n \(eventlabel4.tag)")
    
    
    
    if let downFullSelected = UIImage(named: "down_full_selected"), let upHalfSelected = UIImage(named: "up_half_selected"), let downHalfSelected = UIImage(named: "down_half_selected"), let upFullSelected = UIImage(named: "up_full_selected") {
    
    switch sender {
    case topDown:
        topDown.setImage(downFullSelected, for: UIControlState.normal)
        middleTopUp.setImage(#imageLiteral(resourceName: "up_half"), for: UIControlState.normal)
        middleTopDown.setImage(#imageLiteral(resourceName: "down_half"), for: UIControlState.normal)
        middleBottomUp.setImage(#imageLiteral(resourceName: "up_half"), for: UIControlState.normal)
        middleBottomDown.setImage(#imageLiteral(resourceName: "down_half"), for: UIControlState.normal)
        bottomUp.setImage(#imageLiteral(resourceName: "up_full"), for: UIControlState.normal)
        
    case middleTopUp:
        topDown.setImage(#imageLiteral(resourceName: "down_full"), for: UIControlState.normal)
        middleTopUp.setImage(upHalfSelected, for: UIControlState.normal)
        middleTopDown.setImage(#imageLiteral(resourceName: "down_half"), for: UIControlState.normal)
        middleBottomUp.setImage(#imageLiteral(resourceName: "up_half"), for: UIControlState.normal)
        middleBottomDown.setImage(#imageLiteral(resourceName: "down_half"), for: UIControlState.normal)
        bottomUp.setImage(#imageLiteral(resourceName: "up_full"), for: UIControlState.normal)
        
    case middleTopDown:
        topDown.setImage(#imageLiteral(resourceName: "down_full"), for: UIControlState.normal)
        middleTopUp.setImage(#imageLiteral(resourceName: "up_half"), for: UIControlState.normal)
        middleTopDown.setImage(downHalfSelected, for: UIControlState.normal)
        middleBottomUp.setImage(#imageLiteral(resourceName: "up_half"), for: UIControlState.normal)
        middleBottomDown.setImage(#imageLiteral(resourceName: "down_half"), for: UIControlState.normal)
        bottomUp.setImage(#imageLiteral(resourceName: "up_full"), for: UIControlState.normal)
        
    case middleBottomUp:
        topDown.setImage(#imageLiteral(resourceName: "down_full"), for: UIControlState.normal)
        middleTopUp.setImage(#imageLiteral(resourceName: "up_half"), for: UIControlState.normal)
        middleTopDown.setImage(#imageLiteral(resourceName: "down_half"), for: UIControlState.normal)
        middleBottomUp.setImage(upHalfSelected, for: UIControlState.normal)
        middleBottomDown.setImage(#imageLiteral(resourceName: "down_half"), for: UIControlState.normal)
        bottomUp.setImage(#imageLiteral(resourceName: "up_full"), for: UIControlState.normal)
        
    case middleBottomDown:
        topDown.setImage(#imageLiteral(resourceName: "down_full"), for: UIControlState.normal)
        middleTopUp.setImage(#imageLiteral(resourceName: "up_half"), for: UIControlState.normal)
        middleTopDown.setImage(#imageLiteral(resourceName: "down_half"), for: UIControlState.normal)
        middleBottomUp.setImage(#imageLiteral(resourceName: "up_half"), for: UIControlState.normal)
        middleBottomDown.setImage(downHalfSelected, for: UIControlState.normal)
        bottomUp.setImage(#imageLiteral(resourceName: "up_full"), for: UIControlState.normal)
        
    case bottomUp:
        topDown.setImage(#imageLiteral(resourceName: "down_full"), for: UIControlState.normal)
        middleTopUp.setImage(#imageLiteral(resourceName: "up_half"), for: UIControlState.normal)
        middleTopDown.setImage(#imageLiteral(resourceName: "down_half"), for: UIControlState.normal)
        middleBottomUp.setImage(#imageLiteral(resourceName: "up_half"), for: UIControlState.normal)
        middleBottomDown.setImage(#imageLiteral(resourceName: "down_half"), for: UIControlState.normal)
        bottomUp.setImage(upFullSelected, for: UIControlState.normal)
        
    default: break
    
    }
    } else {
        topDown.setImage(#imageLiteral(resourceName: "down_full"), for: UIControlState.normal)
        middleTopUp.setImage(#imageLiteral(resourceName: "up_half"), for: UIControlState.normal)
        middleTopDown.setImage(#imageLiteral(resourceName: "down_half"), for: UIControlState.normal)
        middleBottomUp.setImage(#imageLiteral(resourceName: "up_half"), for: UIControlState.normal)
        middleBottomDown.setImage(#imageLiteral(resourceName: "down_half"), for: UIControlState.normal)
        bottomUp.setImage(#imageLiteral(resourceName: "up_full"), for: UIControlState.normal)
    }
    
    }
    
    
    func displayEvent() {
        
        topDown.setImage(#imageLiteral(resourceName: "down_full"), for: UIControlState.normal)
        middleTopUp.setImage(#imageLiteral(resourceName: "up_half"), for: UIControlState.normal)
        middleTopDown.setImage(#imageLiteral(resourceName: "down_half"), for: UIControlState.normal)
        middleBottomUp.setImage(#imageLiteral(resourceName: "up_half"), for: UIControlState.normal)
        middleBottomDown.setImage(#imageLiteral(resourceName: "down_half"), for: UIControlState.normal)
        bottomUp.setImage(#imageLiteral(resourceName: "up_full"), for: UIControlState.normal)
        
        currentRound += 1
        
        do {
            try historicalEvents.displayEvents(label1: topEventLabel, label2: eventLabel2, label3: eventLabel3, label4: eventlabel4, nextRound: nextRoundButton)
        } catch {
            fatalError("\(error)")
        }
    }
    
    func prepareSound() {
        do {
            correctSound = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "CorrectDing", ofType: "wav")!))
            incorrectSound = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "IncorrectBuzz", ofType: "wav")!))
            
            
            correctSound.prepareToPlay()
            incorrectSound.prepareToPlay()
        }
        catch {
            
        }
    }
    
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if event?.subtype == UIEventSubtype.motionShake {
            checkEventOrder()
        }
    }
    
    


    
}



