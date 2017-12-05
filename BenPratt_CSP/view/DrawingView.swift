//
//  DrawingView.swift
//  BenPratt_CSP
//
//  Created by Pratt, Benjamin on 12/5/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class DrawingView: UIView {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        drawStickFigure().stroke()
        drawTurtle()
        drawHappyTree()
    }
    
    public func drawStickFigure() -> UIBezierPath{
        let stickFigure = UIBezierPath()
        
        UIColor.magenta.setStroke()
        stickFigure.lineWidth = 3
        
        stickFigure.addArc(withCenter: CGPoint(x: 200, y: 200),
                           radius: CGFloat(20),
                           startAngle: CGFloat(0),
                           endAngle: CGFloat(2)*CGFloat.pi,
                           clockwise: true)
        stickFigure.move(to: CGPoint(x: 200, y: 220))
        stickFigure.addLine(to: CGPoint(x: 200, y: 270))
        stickFigure.move(to: CGPoint(x: 180, y: 240))
        stickFigure.addLine(to: CGPoint(x: 220, y: 240))
        stickFigure.move(to: CGPoint(x: 200, y: 270))
        stickFigure.addLine(to: CGPoint(x: 180, y: 300))
        stickFigure.move(to: CGPoint(x: 200, y: 270))
        stickFigure.addLine(to: CGPoint(x: 220, y: 300))
        
        return stickFigure
    }
    
    public func drawHappyTree(){
        
    }

    public func drawTurtle(){
        
    }
}
