//
//  SnowClipView.swift
//  AnimationView
//
//  Created by Gianmarco Cotellessa on 19/01/2019.
//  Copyright © 2019 Gianmarco Cotellessa. All rights reserved.
//

import UIKit

class BombClipView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.purple
        self.changeBackgroundColor()
    }
    
    private func changeBackgroundColor() {
        DispatchQueue.main.asyncAfter(deadline: .now()) {
            UIView.animate(withDuration: 3.0, animations: {
                self.backgroundColor = UIColor.blue
            }) { finished in
                UIView.animate(withDuration: 3.0, animations: {
                    self.backgroundColor = UIColor.purple
                }) { finished in
                    self.changeBackgroundColor()
                }
            }
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
