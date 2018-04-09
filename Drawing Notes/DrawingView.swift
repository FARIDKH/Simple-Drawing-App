//
//  DrawingView.swift
//  Drawing Notes
//
//  Created by Farid Qanbarov on 4/8/18.
//  Copyright © 2018 Farid Qanbarov. All rights reserved.
//

import UIKit

class DrawingView: UIView , UIGestureRecognizerDelegate {

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    var userTouchPoints : [CGPoint] = [CGPoint]()
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        let path = UIBezierPath()
        if let firstLocation = userTouchPoints.first {
            path.move(to: firstLocation)
            for i in 1 ..< userTouchPoints.count {
                path.addLine(to: userTouchPoints[i])
            }
        }
        path.close()
        UIColor.green.setStroke()
        path.lineWidth = 3.0
        path.stroke()
    }
    
    override func addGestureRecognizer(_ gestureRecognizer: UIGestureRecognizer) {
        let translation = gestureRecognizer.location(in: self)
        userTouchPoints.append(translation)
        setNeedsDisplay()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        if let location = touches.first?.location(in: self) {
//            userTouchPoints.append(location)
//            print(userTouchPoints)
//            setNeedsDisplay()
//        }
        
    }
    
}
