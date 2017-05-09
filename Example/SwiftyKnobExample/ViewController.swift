//
//  ViewController.swift
//  SwiftyKnobExample
//
//  Created by Jevin Sewaruth on 09/05/2017.
//  Copyright © 2017 Jevin Sew. All rights reserved.
//

import UIKit
import SwiftyKnob

class ViewController: UIViewController {
    var k1: Knob!
    var k2: Knob!
    var k3: Knob!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let knobSize = self.view.frame.width / 3.0
        
        k1 = Knob(frame: CGRect(x: 0, y: 20, width: knobSize, height: knobSize),
                  borderWidth: 18,
                  borderColor: UIColor.red,
                  value: 0.78, text: "78%",
                  description: "click rate",
                  autoAnimate: false
        )
        k2 = Knob(frame: CGRect(x: knobSize, y: 20, width: knobSize, height: knobSize),
                  borderWidth: 4,
                  borderColor: UIColor.blue,
                  value: 0.62,
                  text: "62",
                  description: "signups"
        )
        k3 = Knob(frame: CGRect(x: knobSize + knobSize, y: 20, width: knobSize, height: knobSize),
                  borderWidth: 20,
                  borderColor: UIColor.green,
                  value: 0.99,
                  text: "99%",
                  description: "retention",
                  autoAnimate: false
        )
        
        self.view.addSubview(k1)
        self.view.addSubview(k2)
        self.view.addSubview(k3)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        k1.animate()
//        k2.animate()
        k3.animate()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

