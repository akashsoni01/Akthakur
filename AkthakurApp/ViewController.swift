//
//  ViewController.swift
//  AkthakurApp
//
//  Created by admin on 4/24/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UIWebViewDelegate{

    @IBOutlet weak var webView: UIWebView!
    let url = URL(string: "http://akthakur.me")
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.delegate = self
        if let unwrappedUrl = url{
            let request = URLRequest(url: unwrappedUrl)
            let session = URLSession.shared
            let task = session.dataTask(with: unwrappedUrl){
                (data,response,error) in
                
                if error == nil{
                    self.webView.loadRequest(request)
                }else{
                    print("Error \(error)")
                }
            }
            task.resume()
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

