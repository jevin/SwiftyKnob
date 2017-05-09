//
//  Knob.swift
//  SwiftyKnob
//
//  Created by Jevin Sewaruth on 08/05/2017.
//  Copyright © 2017 Jevin Sew. All rights reserved.
//

import UIKit

public class Knob: UIView {
    // Mark: Properties
    @IBInspectable var borderWidth: CGFloat = 20
    @IBInspectable var borderColor: UIColor = UIColor.lightGray
    @IBInspectable var value: Double = 0.78
    @IBInspectable var text: String = "78%"
    @IBInspectable var descriptionString: String = "retention"
    @IBInspectable var autoAnimate: Bool = true
    
    // Mark: Global properties
    var circle: CAShapeLayer!
    var textLabel: UILabel!
    var descriptionLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        initializeView()
    }
    
    public convenience init(frame: CGRect, borderWidth: CGFloat, borderColor: UIColor, value: Double, text: String, description: String) {
        self.init(frame: frame, borderWidth: borderWidth, borderColor: borderColor, value: value, text: text, description: description, autoAnimate: true)
    }
    
    public init(frame: CGRect, borderWidth: CGFloat, borderColor: UIColor, value: Double, text: String, description: String, autoAnimate: Bool) {
        super.init(frame: frame)
        
        self.borderWidth = borderWidth
        self.borderColor = borderColor
        self.value = value
        self.text = text
        self.descriptionString = description
        self.autoAnimate = autoAnimate
        
        initializeView()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        initializeView()
    }
    
    override public func draw(_ rect: CGRect) {
        let width = frame.width
        let height = frame.height
        let startAngle = 0.7
        let travelAngle = 1.6
        let endAngle = startAngle + (travelAngle * value)
        
        circle = CAShapeLayer()
        circle.path = UIBezierPath(arcCenter: CGPoint(x: width / CGFloat(2), y: height / CGFloat(2)), radius: (width / CGFloat(2)) - borderWidth, startAngle: CGFloat(Double.pi * startAngle), endAngle: CGFloat(Double.pi * endAngle), clockwise: true).cgPath
        circle.fillColor = UIColor.clear.cgColor
        circle.strokeColor = borderColor.cgColor
        circle.lineWidth = borderWidth
        
        circle.strokeEnd = 0
        
        layer.addSublayer(circle)
        
        if autoAnimate {
            self.animate()
        }
    }
    
    public func animate() {
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        
        animation.duration = 0.5
        
        animation.fromValue = 0
        animation.toValue = 1
        
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        
        resizeLabels()
        circle.strokeEnd = 1
        circle.add(animation, forKey: "animate")
    }
    
    func initializeView() {
        guard value >= 0.0 && value <= 1.0 else {
            fatalError("Value has to be between 0.0 and 1.0")
        }
        
        self.backgroundColor = UIColor.clear
        
        textLabel = UILabel()
        textLabel.text = text
        textLabel.textColor = UIColor.darkGray
        textLabel.textAlignment = .center
        textLabel.font = UIFont(name: "Helvetica-Bold", size: 16)
        self.addSubview(textLabel)
        
        descriptionLabel = UILabel()
        descriptionLabel.text = descriptionString
        descriptionLabel.textColor = UIColor.lightGray
        descriptionLabel.textAlignment = .center
        descriptionLabel.font = UIFont(name: "Helvetica", size: 12)
        self.addSubview(descriptionLabel)
    }
    
    func resizeLabels() {
        let adjustment: CGFloat = 0.04
        
        textLabel.sizeToFit()
        var textLabelFrame = textLabel.frame
        textLabelFrame.size.width = self.frame.width
        textLabelFrame.origin.y = (self.frame.height - textLabelFrame.height) / 2
        // Adjust text position
        textLabelFrame.origin.y = textLabelFrame.origin.y - (self.frame.height * adjustment)
        textLabel.frame = textLabelFrame
        
        descriptionLabel.sizeToFit()
        var descriptionLabelFrame = descriptionLabel.frame
        descriptionLabelFrame.size.width = self.frame.width
        descriptionLabelFrame.origin.y = textLabel.frame.origin.y + textLabel.frame.height
        descriptionLabel.frame = descriptionLabelFrame
    }
}
