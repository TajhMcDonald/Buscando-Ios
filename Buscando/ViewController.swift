//
//  ViewController.swift
//  Buscando
//
//  Created by Tajh McDonald on 7/27/16.
//  Copyright © 2016 TMCD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var webview: UIWebView!
    
    @IBOutlet var searchBar: UISearchBar!
    @IBOutlet var actin: UIActivityIndicatorView!
    
    

    
    @IBAction func shareButtonClicked(sender: UIBarButtonItem) {
        let Share = "Created By Tajh McDonald"
        
        if let myWebsite = NSURL(string: "http://www.apple.com/") {
            let objectsToShare = [Share, myWebsite]
            let activityVC = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)
            self.presentViewController(activityVC, animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Load URL into web view
        let url: NSURL = NSURL(string: "http://www.google.com/")!
        let requestObj: NSURLRequest = NSURLRequest(URL: url)
        webview.loadRequest(requestObj)
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func searchBarSearchButtonClicked(searchbar: UISearchBar) {
        searchbar.resignFirstResponder()
        
        
        let text = searchBar.text
        let url = NSURL(string: text!)
        let request =  NSURLRequest(URL: url!)
        
        webview.loadRequest(request)
    
        
    }
    func searchBarCancelButtonClicked(searchBar: UISearchBar) {
        searchBar.resignFirstResponder()

    }
    
    func webviewDidStartLoad(_: UIWebView) {
        actin.startAnimating()
        
    }
    
    func webviewDidFinshLoad(_: UIWebView) {
        actin.stopAnimating()
        
    }
    
    

    

}

