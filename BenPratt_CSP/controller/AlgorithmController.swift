//
//  AlgorithmController.swift
//  BenPratt_CSP
//
//  Created by Pratt, Benjamin on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class AlgorithmController: UIViewController {
    
    @IBOutlet weak var algorithmText: UILabel!
    
    private func setupAlgorithm(){
        let algorithm: String = "These are the inbstrructions to create a project in Java using eclipse and github \n"
        
        let algorithmSteps:[String] = [
        "Create new project on github website",
        "In Ecllipse add a new project",
        "add model, view, controller and the classes that go in them",
        "from terminal(or github desktop) do:",
        "git init .",
        "git add .",
        "git commit -m $Message",
        "git remote add origin $URL",
        "git push -u origin master"
        ]
        
        let attributesDictionary = [NSAttributedStringKey.font: algorithmText.font]
        let fullAttributedString = NSMutableAttributedString(string: algorithm, attributes: attributesDictionary)
        
        for step in algorithmSteps{
            let bullet: String = "*"
            let formattedStep :String = "\n\(bullet) \(step)"
            let attributedStringStep: NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
            let paragraphStyle = createParagraphStyle()
            
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : paragraphStyle], range: NSMakeRange(0, attributedStringStep.length))
            
            fullAttributedString.append(attributedStringStep)
        }
    }
    
    private func createParagraphStyle() ->NSParagraphStyle{
        let paragraphStyle: NSMutableParagraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .left
        paragraphStyle.defaultTabInterval = 15
        paragraphStyle.firstLineHeadIndent = 20
        paragraphStyle.headIndent = 35
        
        return paragraphStyle
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

