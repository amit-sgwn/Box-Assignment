//
//  UnderLineView.swift
//  Box
//
//  Created by Amit on 14/04/18.
//  Copyright © 2018 Novanet. All rights reserved.
//

import UIKit

@IBDesignable
class UnderLineView: UIView {
    @IBInspectable var strokeColor: UIColor = UIColor.black {
        didSet {
            self.setNeedsDisplay()
        }
    }
    @IBInspectable var lineWidth: CGFloat = 2.0 {
        didSet {
            self.setNeedsDisplay()
        }
    }
    @IBInspectable var marginX: CGFloat = 0.0 {
        didSet {
            self.setNeedsDisplay()
        }
    }
    init() {
        super.init(frame: CGRect.zero)
        self.backgroundColor = UIColor.clear
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        guard let context = UIGraphicsGetCurrentContext() else {
            return
        }
        strokeColor.setStroke()
        context.setLineWidth(lineWidth)
        context.move(to: CGPoint(x: rect.minX + marginX, y: rect.maxY))
        context.addLine(to: CGPoint(x: rect.maxX - marginX, y: rect.maxY))
        context.strokePath()
    }
}
