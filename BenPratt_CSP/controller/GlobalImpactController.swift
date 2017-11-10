//
//  GlobalImpactController.swift
//  BenPratt_CSP
//
//  Created by Pratt, Benjamin on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class GlobalImpactController: UIViewController {

    @IBOutlet weak var WaterImage: UIImageView!
    @IBOutlet weak var SketchImage: UIImageView!
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    public func setup(){
        
        WaterImage.image = UIImage(named: "WaterProblem")
        
        textLabel.text = "Plan: An app that allows people to report the water data for their area and gethers in it in a nice, viewable format.\n\nNeed: 1.8 Million people are without clean water, this allows the spread of various diseases.\n\nPersonal Connection: I have researched the hazards of unclean water in the developing world and something needs to be done about it."
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
