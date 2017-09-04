//
//  ShakeTextView.swift
//  AnimationsDemo
//
//  Created by Mayank on 30/08/17.
//  Copyright © 2017 Mayank. All rights reserved.
//

import UIKit

class ShakeTextView: UITextView {
    
    func shake() {
        
        let animate = CABasicAnimation(keyPath: "position")
        animate.duration = 0.05
        animate.repeatCount = 5
        animate.autoreverses = true
        animate.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 80, y: self.center.y))
        animate.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 40, y: self.center.y))
        
        self.layer.add(animate, forKey: "position")
    }



}
