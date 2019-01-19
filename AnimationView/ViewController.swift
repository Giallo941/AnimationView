//
//  ViewController.swift
//  AnimationView
//
//  Created by Gianmarco Cotellessa on 19/01/2019.
//  Copyright © 2019 Gianmarco Cotellessa. All rights reserved.
//

import UIKit
import QuartzCore

class ViewController: UIViewController {
    
    var snowView: BombView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        snowView = BombView(frame: CGRect(x: -150, y: -100, width: 300, height: 100))
        let snowClipView = BombClipView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height))
        snowClipView.clipsToBounds = true
        snowClipView.addSubview(snowView)
        view.addSubview(snowClipView)
    
    }
    
}

