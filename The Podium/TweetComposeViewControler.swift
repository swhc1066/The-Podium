//
//  TweetComposeViewControler.swift
//  The Podium
//
//  Created by Sean Craig on 2/20/15.
//  Copyright (c) 2015 Sean Craig. All rights reserved.
//

import UIKit

class TweetComposeViewControler: UIViewController {

    @IBOutlet var tweetContent: UITextView!
    @IBOutlet var postButton: UIButton!
    @IBOutlet var postActivity: UIActivityIndicatorView!
    
    @IBAction func dismissView(sender: AnyObject) {
    }
    
    @IBAction func postToTwitter(sender: AnyObject) {
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
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
