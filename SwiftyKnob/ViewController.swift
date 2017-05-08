//
//  ViewController.swift
//  SwiftyKnob
//
//  Created by Jevin Sewaruth on 08/05/2017.
//  Copyright © 2017 Jevin Sew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var knob1: Knob!
    var knob2: Knob!
    var knob3: Knob!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        knob1 = Knob(frame: CGRect(x: 8, y: 20, width: 114, height: 114), borderWidth: 18, borderColor: UIColor.red, value: 0.8, text: "80", description: "Signups")
        knob2 = Knob(frame: CGRect(x: 122, y: 20, width: 114, height: 114), borderWidth: 18, borderColor: UIColor.blue, value: 0.8, text: "80", description: "Signups")
        knob3 = Knob(frame: CGRect(x: 244, y: 20, width: 114, height: 114), borderWidth: 18, borderColor: UIColor.green, value: 0.8, text: "80", description: "Signups")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        knob1.animate()
        knob2.animate()
        knob3.animate()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

