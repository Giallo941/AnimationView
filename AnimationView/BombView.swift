//
//  SnowView.swift
//  AnimationView
//
//  Created by Gianmarco Cotellessa on 19/01/2019.
//  Copyright © 2019 Gianmarco Cotellessa. All rights reserved.
//

import UIKit
import QuartzCore

class BombView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let emitter = layer as! CAEmitterLayer
        emitter.emitterPosition = CGPoint(x: bounds.size.width / 2, y: 0)
        emitter.emitterSize = bounds.size
        emitter.emitterShape = CAEmitterLayerEmitterShape.rectangle
        
        let emitterCellImage = UIImage(named: "bomb")
        let emitterCell = setupEmitterCells(with: emitterCellImage!)
        
        emitter.emitterCells = [emitterCell]
    }
    
    private func setupEmitterCells(with image: UIImage) -> CAEmitterCell {
        let emitterCell = CAEmitterCell()
        emitterCell.contents = image.cgImage
        emitterCell.birthRate = 8
        emitterCell.lifetime = 5
        emitterCell.color = UIColor.white.cgColor
        emitterCell.redRange = 0.0
        emitterCell.blueRange = 0.0
        emitterCell.greenRange = 0.0
        emitterCell.velocity = 10
        emitterCell.velocityRange = 50
        emitterCell.emissionRange = CGFloat(Double.pi / 2)
        emitterCell.emissionLongitude = CGFloat(Double.pi)
        emitterCell.yAcceleration = 80
        emitterCell.xAcceleration = 40
        emitterCell.scale = 1.5
        emitterCell.scaleRange = 0.5
        emitterCell.scaleSpeed = 0
        emitterCell.alphaRange = 0.5
        emitterCell.alphaSpeed = -0.15
        emitterCell.spin = CGFloat(3)
        
        return emitterCell
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override class var layerClass: AnyClass {
        return CAEmitterLayer.self
    }

}
