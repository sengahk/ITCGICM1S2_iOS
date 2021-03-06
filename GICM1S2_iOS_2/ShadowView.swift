//
//  ShadowView.swift
//  GICM1S2_iOS_2
//
//  Created by Senghak on 3/14/20.
//  Copyright © 2020 Senghak. All rights reserved.
//

import UIKit
import UIKit

class ShadowView: UIView {
  
//    let containerView = UIView()
//    let cornerRadius: CGFloat = 6.0
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//
//        layoutView()
//    }
//
//    required init?(coder aDecoder: NSCoder) {
////        fatalError("init(coder:) has not been implemented")
//        super.init(coder: aDecoder)
//
//        layoutView()
//    }
//
//    func layoutView() {
//
//      // set the shadow of the view's layer
//      layer.backgroundColor = UIColor.clear.cgColor
//      layer.shadowColor = UIColor.black.cgColor
//      layer.shadowOffset = CGSize(width: 0, height: 1.0)
//      layer.shadowOpacity = 0.2
//      layer.shadowRadius = 4.0
//
//      // set the cornerRadius of the containerView's layer
//      containerView.layer.cornerRadius = cornerRadius
//      containerView.layer.masksToBounds = true
//
//      addSubview(containerView)
//
//      //
//      // add additional views to the containerView here
//      //
//
//      // add constraints
//      containerView.translatesAutoresizingMaskIntoConstraints = false
//
//      // pin the containerView to the edges to the view
//      containerView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
//      containerView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
//      containerView.topAnchor.constraint(equalTo: topAnchor).isActive = true
//      containerView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
//    }
    
    private var shadowLayer: CAShapeLayer!
    private var cornerRadius: CGFloat = 15.0
    private var fillColor: UIColor = .gray // the color applied to the shadowLayer, rather than the view's backgroundColor
     
    override func layoutSubviews() {
        super.layoutSubviews()

        if shadowLayer == nil {
            shadowLayer = CAShapeLayer()
          
            shadowLayer.path = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius).cgPath
            shadowLayer.fillColor = fillColor.cgColor

            shadowLayer.shadowColor = UIColor.black.cgColor
            shadowLayer.shadowPath = shadowLayer.path
            shadowLayer.shadowOffset = CGSize(width: 0.0, height: 1.0)
            shadowLayer.shadowOpacity = 0.2
            shadowLayer.shadowRadius = 3

            layer.insertSublayer(shadowLayer, at: 0)
        }
    }
}

