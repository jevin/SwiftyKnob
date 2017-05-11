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
    let turquoise = UIColor(red: 26.0/255, green: 188.0/255.0, blue: 156.0/255.0, alpha: 1.0)
    let green_sea = UIColor(red: 22.0/255, green: 160.0/255.0, blue: 133.0/255.0, alpha: 1.0)
    let emerald = UIColor(red: 46.0/255, green: 204.0/255.0, blue: 113.0/255.0, alpha: 1.0)
    let nephritis = UIColor(red: 39.0/255, green: 174.0/255.0, blue: 96.0/255.0, alpha: 1.0)
    let peter_river = UIColor(red: 52.0/255, green: 152.0/255.0, blue: 219.0/255.0, alpha: 1.0)
    let belize_hole = UIColor(red: 41.0/255, green: 128.0/255.0, blue: 185.0/255.0, alpha: 1.0)
    let amethyst = UIColor(red: 155.0/255, green: 89.0/255.0, blue: 182.0/255.0, alpha: 1.0)
    let wisteria = UIColor(red: 142.0/255, green: 68.0/255.0, blue: 173.0/255.0, alpha: 1.0)
    let wet_asphalt = UIColor(red: 52.0/255, green: 73.0/255.0, blue: 94.0/255.0, alpha: 1.0)
    let midnight_blue = UIColor(red: 44.0/255, green: 62.0/255.0, blue: 80.0/255.0, alpha: 1.0)
    let sun_flower = UIColor(red: 241.0/255, green: 196.0/255.0, blue: 15.0/255.0, alpha: 1.0)
    let orange = UIColor(red: 243.0/255, green: 156.0/255.0, blue: 18.0/255.0, alpha: 1.0)
    let carrot = UIColor(red: 230.0/255, green: 126.0/255.0, blue: 34.0/255.0, alpha: 1.0)
    let pumpkin = UIColor(red: 211.0/255, green: 84.0/255.0, blue: 0.0/255.0, alpha: 1.0)
    let alizarin = UIColor(red: 231.0/255, green: 76.0/255.0, blue: 60.0/255.0, alpha: 1.0)
    let pomegranate = UIColor(red: 192.0/255, green: 57.0/255.0, blue: 43.0/255.0, alpha: 1.0)
    let clouds = UIColor(red: 236.0/255, green: 240.0/255.0, blue: 241.0/255.0, alpha: 1.0)
    let silver = UIColor(red: 189.0/255, green: 195.0/255.0, blue: 199.0/255.0, alpha: 1.0)
    let concrete = UIColor(red: 149.0/255, green: 165.0/255.0, blue: 166.0/255.0, alpha: 1.0)
    let asbestos = UIColor(red: 127.0/255, green: 140.0/255.0, blue: 141.0/255.0, alpha: 1.0)
    
    var k1: Knob!
    var k2: Knob!
    var k3: Knob!

    @IBOutlet weak var mainKnob: Knob!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let knobSize = (self.view.frame.width - 16) / 3.0
        let y: CGFloat = 50
        
        k1 = Knob(frame: CGRect(x: 8, y: y + 30, width: knobSize, height: knobSize),
                  borderWidth: 18,
                  borderColor: alizarin,
                  value: 0.78, text: "78%",
                  description: "open rate",
                  autoAnimate: false
        )
        k2 = Knob(frame: CGRect(x: 8 + knobSize, y: y, width: knobSize, height: knobSize),
                  borderWidth: 18,
                  borderColor: turquoise,
                  value: 0.62,
                  text: "62",
                  description: "click rate"
        )
        k3 = Knob(frame: CGRect(x: 8 + knobSize + knobSize, y: y + 30, width: knobSize, height: knobSize),
                  borderWidth: 18,
                  borderColor: amethyst,
                  value: 0.31,
                  text: "99%",
                  description: "order rate",
                  autoAnimate: false
        )
        
        k1.textLabel.textColor = clouds
        k2.textLabel.textColor = clouds
        k3.textLabel.textColor = clouds
        mainKnob.textLabel.textColor = clouds
        mainKnob.textLabel.font = UIFont(name: "Helvetica-bold", size: 24)
        mainKnob.descriptionLabel.font = UIFont(name: "Helvetica", size: 14)
        
        self.view.backgroundColor = wet_asphalt
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

