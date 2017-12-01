//
//  InternetDetailViewController.swift
//  BenPratt_CSP
//
//  Created by Pratt, Benjamin on 11/29/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
import WebKit

public class InternetDetailViewController: UIViewController{
    @IBOutlet weak var textView: UILabel!
    @IBOutlet weak var webViewer: WKWebView!
    
    var detailAddress: String?{
        didSet{
            configureDetailView()
        }
    }
    
    var detailText: String?{
        didSet{
            configureDetailView()
        }
    }
    
    override public func viewDidLoad(){
        super.viewDidLoad()
        configureDetailView()
    }
    
    private func configureDetailView(){
        if detailAddress != nil{
            if let currentWebView = webViewer{
                let currentURL = URL(string: detailAddress!)
                let currentWebRequest = URLRequest(url: currentURL!)
                currentWebView.load(currentWebRequest)
            }
        }
        else{
            if let currentWebView = webViewer{
                let currentURL = URL(string: "https://www.cnn.com")
                currentWebView.load(URLRequest(url: currentURL!))
            }
        }
        
        if detailText != nil{
            if let currentText = textView{
                currentText.text = detailText
            }
        }
        else{
            if let currentText = textView{
                currentText.text = "Ben's CSP App Internet Screen"
            }
        }
    }
}
