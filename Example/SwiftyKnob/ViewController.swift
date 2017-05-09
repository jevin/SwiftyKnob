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
    @IBOutlet weak var knob4: Knob!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        knob1 = Knob(frame: CGRect(x: 8, y: 20, width: 127, height: 127), borderWidth: 18, borderColor: UIColor.red, value: 0.92, text: "92%", description: "retention")
        knob2 = Knob(frame: CGRect(x: 8 + 127, y: 20, width: 127, height: 127), borderWidth: 18, borderColor: UIColor.blue, value: 0.73, text: "73", description: "signups")
        knob3 = Knob(frame: CGRect(x: 8 + 127 + 8 + 127, y: 20, width: 127, height: 127), borderWidth: 18, borderColor: UIColor.green, value: 0.99, text: "99%", description: "done")
        
        self.view.addSubview(knob1)
        self.view.addSubview(knob2)
        self.view.addSubview(knob3)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        knob1.animate()
        knob2.animate()
        knob3.animate()
        knob4.animate()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

