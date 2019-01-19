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
    
    var snowView: SnowView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        snowView = SnowView(frame: CGRect(x: -150, y: -100, width: 300, height: 50))
        let snowClipView = UIView(frame: view.frame.offsetBy(dx: 0, dy: 0))
        snowClipView.clipsToBounds = true
        snowClipView.addSubview(snowView)
        view.addSubview(snowClipView)
    
    }
    
}

