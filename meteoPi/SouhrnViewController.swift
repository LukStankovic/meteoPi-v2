//
//  SecondViewController.swift
//  meteoPi
//
//  Created by Lukáš Stankovič on 25.07.16.
//  Copyright © 2016 Lukáš Stankovič. All rights reserved.
//

import UIKit

class SouhrnViewController: UIViewController {

    @IBOutlet var webViewSouhrn: UIWebView!
    
    @IBAction func refreshWebView(sender: UIButton) {
        let htmlString:String! = "<iframe style='width: 100%; height: 100%' seamless frameborder='0' scrolling='no' src='https://docs.google.com/spreadsheets/d/1E-ElrybFLzFDbhbJryf5kbKQk6J29jDipateSb64Tvs/pubhtml?gid=191496846&amp;single=true&amp;widget=true&amp;headers=false'></iframe>"
        webViewSouhrn.loadHTMLString(htmlString, baseURL: nil)

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let htmlString:String! = "<iframe style='width: 100%; height: 100%' seamless frameborder='0' scrolling='no' src='https://docs.google.com/spreadsheets/d/1E-ElrybFLzFDbhbJryf5kbKQk6J29jDipateSb64Tvs/pubhtml?gid=191496846&amp;single=true&amp;widget=true&amp;headers=false'></iframe>"
        
        self.webViewSouhrn.frame = self.view.bounds
        self.webViewSouhrn.scalesPageToFit = true
        
        webViewSouhrn.loadHTMLString(htmlString, baseURL: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

