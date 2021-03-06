//
//  FirstViewController.swift
//  meteoPi
//
//  Created by Lukáš Stankovič on 25.07.16.
//  Copyright © 2016 Lukáš Stankovič. All rights reserved.
//

import UIKit

class GrafViewController: UIViewController {

    @IBOutlet var webView: UIWebView!
    @IBAction func refreshWebView(sender: UIButton) {
        
        let htmlString:String! = "<iframe width='1200' height='708' seamless frameborder='0' scrolling='no' src='https://docs.google.com/spreadsheets/d/1E-ElrybFLzFDbhbJryf5kbKQk6J29jDipateSb64Tvs/pubchart?oid=1100784856&amp;format=interactive'></iframe>"
        
        webView.loadHTMLString(htmlString, baseURL: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let htmlString:String! = "<iframe width='1200' height='708' seamless frameborder='0' scrolling='no' src='https://docs.google.com/spreadsheets/d/1E-ElrybFLzFDbhbJryf5kbKQk6J29jDipateSb64Tvs/pubchart?oid=1100784856&amp;format=interactive'></iframe>"
        
        self.webView.frame = self.view.bounds
        self.webView.scalesPageToFit = true
 
        webView.loadHTMLString(htmlString, baseURL: nil)


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

