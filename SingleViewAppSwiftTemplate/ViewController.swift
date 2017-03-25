//
//  ViewController.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Treehouse on 12/8/16.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import Foundation
import UIKit

class ViewController: UIViewController {
    
//    Label Outlets
    @IBOutlet weak var topEventLabel: UILabel!
    @IBOutlet weak var eventLabel2: UILabel!
    @IBOutlet weak var eventLabel3: UILabel!
    @IBOutlet weak var eventlabel4: UILabel!

////    Button Outlets
    @IBOutlet weak var topDown: UIButton!
    @IBOutlet weak var middleTopUp: UIButton!
    @IBOutlet weak var middleTopDown: UIButton!
    @IBOutlet weak var middleBottomUp: UIButton!
    @IBOutlet weak var middleBottomDown: UIButton!
    @IBOutlet weak var bottomUp: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    

    
    
//    Configure buttons to switch events
@IBAction func switchEvent(_ sender: UIButton) {
    
    switch sender {
            
        case topDown, middleTopUp:
            swap(&topEventLabel.text, &eventLabel2.text)
            
        case middleTopDown, middleBottomUp:
            swap(&eventLabel2.text, &eventLabel3.text)
            
        case middleBottomDown, bottomUp:
            swap(&eventLabel3.text, &eventlabel4.text)
            
        default: break
        }
    
    
    
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

    
}



