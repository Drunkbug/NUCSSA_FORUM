//
//  ViewController.swift
//  NUCSSA_FORUM
//
//  Created by Leyi Qiang on 5/13/16.
//  Copyright © 2016 Leyi Qiang. All rights reserved.
//

import UIKit
import WebKit
class ViewController: UIViewController {

    var webView: WKWebView!//initialize webview
    
    // URLs
    let forumURL = "http://nucssa.org/forum/forum.php"
    let nucssaURL = "http://nucssa.org/"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let preferences = WKPreferences()
        preferences.javaScriptEnabled = true//Enable javascript !important!
        
        let config = WKWebViewConfiguration()
        config.preferences = preferences // assign config's preferences to preferences
        //create an instance of web view
        webView = WKWebView(frame: view.bounds, configuration: config)// view.bounds:hold the entile screen
        view.addSubview(webView)
        
        webViewLoadURL(forumURL)
        
    }

    func webViewLoadURL(urlString:String) {
        if let url = NSURL(string: urlString) {
            let urlRequest = NSURLRequest(URL: url)
            webView.loadRequest(urlRequest)
            
        
        }
    }
    
    

    
    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }

    //MARK: - target action
    @IBAction func Change_To_Forum(sender: UISegmentedControl) {
        
    }
}

